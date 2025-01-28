The upscale_v2 archive contains the latest and greatest ONNX Super Resolution upscaler for Gaffer. 

The project file contains two methods for accomplishing the same result: Manual and Magic. 

- Manual requires running the included PowerShell script to create the initial image tiles. 
- Magic is courtesy of Daniel Dresser from the Gaffer team. It performs the entire conversion automatically!

In both cases you'll need to chose your input image. In my tests I used a 1920x1080 image and upscaled to 4k. You'll also need to adjust all the paths and OCIO colorspaces to match your system.
