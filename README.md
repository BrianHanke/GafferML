### March 27, 2025

Added upscale_v3 which works well with models like those found here: https://github.com/Phhofm/models/releases. 

Sample workflow:

- Download 4xNomos2_hq_dat2_fp32.onnx from https://github.com/Phhofm/models/releases/tag/4xNomos2_hq_dat2
- Update paths in the PowerShell script and Gaffer scene to match your system.
- Tile a 1920x1080 image using tile_v3.ps1.
- Upscale the image in upscale_v3.gfr (might take an hour or more).
- Assemble the resulting tiles in the Contact Sheet and save the final 8K image to disk.

### First Release

The upscale_v2 archive contains the latest and greatest ONNX Super Resolution upscaler for Gaffer. 

The project file contains two methods for accomplishing the same result: Manual and Magic. 

- Manual requires running the included PowerShell script to create the initial image tiles. 
- Magic is courtesy of Daniel Dresser from the Gaffer team. It performs the entire conversion automatically!

In both cases you'll need to chose your input image. In my tests I used a 1920x1080 image and upscaled to 4k. You'll also need to adjust all the paths and OCIO colorspaces to match your system.
