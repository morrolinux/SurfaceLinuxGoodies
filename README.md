# SurfaceLinuxGoodies
Configs and utilities for Linux users on a Microsoft Surface tablet.

# Note taking
This section contains everything that might be useful when using the tablet as a note taking device.

## Surface Pen purple button
Enables the purple button to be programmed to take an action upon pressing. 
Be aware for some reason the pen must be paired each time upon reboot. 

The default action I choose is to send CTRL+z to the active window, which is helping alot with note taking.

## xournalpp-config 
Is just a set of settings I'm comfortable with in xournal++ (autosave settings, custom toolbars, etc...)

## config-wacom-libinput
Contains my X11 configuration for using libinput driver for both Touchpad and Touchscreen, while keep using wacom driver for the pen.

## pen disable touchscreen
Contains a script and a service (which must be enabled of course) for disabling the touchscreen when the Surface Pen is hovering on the screen. Useful for improved palm rejection.

# General usage

## Automatic screen rotation
Contains a script and a service (which must be enabled of course) for making it possible to... well it's pretty much self-explicative.

## Enable vsync
On integrated Intel gfx, vsync might not be enabled by default. Hence, we see this 'tearing' effect when scrolling contents. 
