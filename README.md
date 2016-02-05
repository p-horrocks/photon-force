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
