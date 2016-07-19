# photon-force

A laser tag implementation using the Particle Photon as the main processor.

# Compiling

To compile this project locally you'll need the gcc-arm toolchain as well as the
Photon firmware. It's built against firmware 0.4.9

* If you get permission problems running npm, see here:
https://docs.npmjs.com/getting-started/fixing-npm-permissions

(On Debian)
> apt-get install gcc-arm-none-eabi dfu_util npm
> npm install -g particle-cli
> git clone https://github.com/spark/firmware.git
> cd firmware
> git checkout release/v0.4.9

Next, create a symlink in firmware/user/applications to where this source is
checked out.

# Qt Creator

These files are the Qt Creator project files, they're not needed to compile
the project, they just make is easier to use Qt Creator as the IDE:

  photon-force.config
  photon-force.creator
  photon-force.files
  photon-force.includes

# Gerber generation

From within PCBNew:
- File->Plot
- Plot format: Gerber
- Check Layers
    F.Cu
    B.Cu
    F.SilkS
    B.SilkS
    F.Mask
    B.Mask
    Edge.Cuts
- Check Options
    Plot module value on silkscreen
    Plot module reference on silkscreen
    Plot other module texts on silkscreen
    Exclude PCB edge layer from other layers
    Default line width 0.15mm
- Check Gerber Options
    Use proper filename extensions
- Click 'Plot'
- Click 'Generate Drill File'
- Check Drill Units: Inches
- Check Zeros Format: Decimal format
- Check Drill Map File Format: Gerber
- Check Options: Minimal header
- Check Drill Origin: Absolute
- Click 'Drill File'
- Remove layer names from plot files (so they're all <name>.gXX)
- Rename *.gbr to *.gml
- Rename *.drl to *.txt
- zip with zip -r <zip file> <name>.*
- zip file ready for upload!
