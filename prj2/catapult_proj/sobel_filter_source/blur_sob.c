////////////////////////////////////////////////////////////////////////////////
//  _____                           _       _    _____      _ _
// |_   _|                         (_)     | |  / ____|    | | |
//   | |  _ __ ___  _ __   ___ _ __ _  __ _| | | |     ___ | | | ___  __ _  ___
//   | | | '_ ` _ \| '_ \ / _ \ '__| |/ _` | | | |    / _ \| | |/ _ \/ _` |/ _ \
//  _| |_| | | | | | |_) |  __/ |  | | (_| | | | |___| (_) | | |  __/ (_| |  __/
// |_____|_| |_| |_| .__/ \___|_|  |_|\__,_|_|  \_____\___/|_|_|\___|\__, |\___|
//                 | |                                                __/ |
//                 |_|                                               |___/
//  _                     _
// | |                   | |
// | |     ___  _ __   __| | ___  _ __
// | |    / _ \| '_ \ / _` |/ _ \| '_ \
// | |___| (_) | | | | (_| | (_) | | | |
// |______\___/|_| |_|\__,_|\___/|_| |_|
//
////////////////////////////////////////////////////////////////////////////////
//  File:           blur_sob.cpp
//  Description:    video to vga blur filter - real-time processing
//  By:             rad09
////////////////////////////////////////////////////////////////////////////////
// this hardware block receives the VGA stream and then produces a blured output
// based on the FIR design - page 230 of HLS Blue Book
////////////////////////////////////////////////////////////////////////////////
// Catapult Project options
// Constraint Editor:
//  Frequency: 27 MHz
//  Top design: vga_blur
//  clk>reset sync: disable; reset async: enable; enable: enable
// Architecture Constraints:
//  interface>vin: wordlength = 150, streaming = 150
//  interface>vout: wordlength = 30, streaming = 30
//  core>main: pipeline + distributed + merged
//  core>main>frame: merged
//  core>main>frame>shift, mac1, mac2: unroll + merged
////////////////////////////////////////////////////////////////////////////////


#include <ac_fixed.h>
#include "blur_sob.h"
#include <iostream>
#include "math/mgc_ac_math.h"

// shift_class: page 119 HLS Blue Book
#include "shift_class_sob.h" 


#pragma hls_design top
void mean_vga(ac_int<PIXEL_WL*KERNEL_WIDTH,false> vin[NUM_PIXELS], ac_int<PIXEL_WL,false> vout[NUM_PIXELS])
{
    ac_int<16, false> red, green, blue, greyx, greyy, val, r[KERNEL_WIDTH], g[KERNEL_WIDTH], b[KERNEL_WIDTH], gr[KERNEL_WIDTH];
    

// #if 1: use filter
// #if 0: copy input to output bypassing filter
#if 1

    // shifts pixels from KERNEL_WIDTH rows and keeps KERNEL_WIDTH columns (KERNEL_WIDTHxKERNEL_WIDTH pixels stored)
    static shift_class<ac_int<PIXEL_WL*KERNEL_WIDTH,false>, KERNEL_WIDTH> regs;
    int i;

    FRAME: for(int p = 0; p < NUM_PIXELS; p++) {
		// init
		red = 0; 
		green = 0; 
		blue = 0;
		greyx = 0;
		greyy = 0;
		RESET: for(i = 0; i < KERNEL_WIDTH; i++) {
			r[i] = 0;
			g[i] = 0;
			b[i] = 0;
			gr[i] = 0;
		}
		
	    //red = vin[p].slc<COLOUR_WL>(2*COLOUR_WL);
        //green = vin[p].slc<COLOUR_WL>(COLOUR_WL);
        //blue = vin[p].slc<COLOUR_WL>(0);
        
        //grey = (red/3 + green/3 + blue/3);
		
		//vin[p].slc<COLOUR_WL>(2*COLOUR_WL) = grey;
        //vin[p].slc<COLOUR_WL>(COLOUR_WL) = grey;
        //vin[p].slc<COLOUR_WL>(0) = grey;
		
		// shift input data in the filter fifo
		regs << vin[p]; // advance the pointer address by the pixel number (testbench/simulation only)
		
		// accumulate
		ACC1: for(i = 0; i < KERNEL_WIDTH; i++) {
			// current line
			r[0] = (regs[i].slc<COLOUR_WL>(2*COLOUR_WL));
			g[0] = (regs[i].slc<COLOUR_WL>(COLOUR_WL));
			b[0] = (regs[i].slc<COLOUR_WL>(0));
			gr[0] = (r[0] + g[0] + b[0])/3;
			
			// the line before ... 
			r[1] = (regs[i].slc<COLOUR_WL>(2*COLOUR_WL + PIXEL_WL));
			g[1] = (regs[i].slc<COLOUR_WL>(COLOUR_WL + PIXEL_WL));
			b[1] = (regs[i].slc<COLOUR_WL>(0 + PIXEL_WL));
			gr[1] = (r[1] + g[1] + b[1])/3;
			
			// the line before ...
			r[2] = (regs[i].slc<COLOUR_WL>(2*COLOUR_WL + 2*PIXEL_WL));
			g[2] = (regs[i].slc<COLOUR_WL>(COLOUR_WL + 2*PIXEL_WL)) ;
			b[2] = (regs[i].slc<COLOUR_WL>(0 + 2*PIXEL_WL));
			gr[2] = (r[2] + g[2] + b[2])/3;
			
			if (i == 0){
		         // greyy -> multiply this column by [-1, 0, 1]
				 greyy += (gr[0]*-1)+(gr[1]*0)+(gr[2]*1);
				 
				 // greyx -> multiply this column by [-1, -2, -1]
		         greyx += (gr[0]*-1)+(gr[1]*-2)+(gr[2]*-1);
		    }
		    if (i == 1){
				 // greyy -> multiply this column by [-2, 0, 2]
				 
		         greyy += (gr[0]*-2)+(gr[1]*0)+(gr[2]*2);
				 // greyx -> multiply this column by [0, 0, 0]
		         greyx += (gr[0]*0)+(gr[1]*0)+(gr[2]*0);
		    }
		    if (i == 2){
				 // greyy -> multiply this column by [-1, 0, 1]
		         greyy += (gr[0]*-1)+(gr[1]*0)+(gr[2]*1);
				  // greyx -> multiply this column by [1, 2, 1]
		         greyx += (gr[0]*1)+(gr[1]*2)+(gr[2]*1);
		    }
		}
		sqrt(((greyy*greyy)+(greyx*greyx)), val);
		
		// normalize result
		/*
		red /= KERNEL_NUMEL;
		green /= KERNEL_NUMEL;
		blue /= KERNEL_NUMEL;
	    */
		// group the RGB components into a single signal
		vout[p] = ((((ac_int<PIXEL_WL, false>)val) << (2*COLOUR_WL)) | (((ac_int<PIXEL_WL, false>)val) << COLOUR_WL) | (ac_int<PIXEL_WL, false>)val);
	    
    }
}
     
     
     
     
     
     
#else    
// display input  (test only)
    FRAME: for(p = 0; p < NUM_PIXELS; p++) {
        // copy the value of each colour component from the input stream
        red = vin[p].slc<COLOUR_WL>(2*COLOUR_WL);
        green = vin[p].slc<COLOUR_WL>(COLOUR_WL);
        blue = vin[p].slc<COLOUR_WL>(0);

		// combine the 3 color components into 1 signal only
        vout[p] = ((((ac_int<PIXEL_WL, false>)red) << (2*COLOUR_WL)) | (((ac_int<PIXEL_WL, false>)green) << COLOUR_WL) | (ac_int<PIXEL_WL, false>)blue);   
    }
}
#endif


// end of file
