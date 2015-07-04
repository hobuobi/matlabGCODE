# matlabGCODE

Contains a growing collection of useful functions for generating GCODE in Matlab without using the typical format for outputting code with variables:

'''sh
$ disp(['G1 X',num2str(x_val),' Y',num2str(y_val)]);
'''

...which can be very, very tedious. 

All of the functions used are dependent on which mode (ABSOLUTE or RELATIVE) you're operating in; as such, make sure you are specifying G90 or G91 respectively. 

In this guide, I will be referring to the functions as if they were operating in ABSOLUTE mode.

## Use

To use, just include the path to the folder that contains all of these functions at the beginning of the Matlab script you are using to generate your GCODE. You can do so as shown below:

'''sh
addpath /home/username/mytools
'''

### straightGC(x_val, y_val)

Generates a controlled movement from the current position to (x_val, y_val). 

### zGC(z_val)

Generates a controlled movement in the z axis to the z_val plane.

### arcGC(startX, startY, endX, endY, a, CW)

Generates an arc without having to define the center, starting from (startX, startY) and ending at (endX, endY), with an arc height of a and traveling clockwise for CW == true and counterclockwise for CW = false. 

### setFeed(feed)

Sets the feedrate to feed.

## Updates

Check back every so often for new pushes! 

Version 1.0.0
