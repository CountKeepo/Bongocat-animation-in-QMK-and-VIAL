# Quick guide on how to add a bongocat animation (and horizontal or vertical WPM counter) to a QMK keyboard

![image](https://user-images.githubusercontent.com/64993772/194180420-2b6859c4-54dd-4eb3-a3be-3f8097f9c58e.png)

**DISCLAIMER - I did not make the bongocat animation files, I found them somewhere and just made them work on my firmware.**

## I'm lazy, what do I do?

You are in luck, in the folder [**Ready made hex files**](https://github.com/CountKeepo/Bongocat-animation-in-QMK-and-VIAL/tree/main/Ready%20made%20HEX%20files) I have included ready hex files for both the CRKBD (Corne) and Lily58 with VIAL support.
https://vial.rocks/

## The basics

In this repo you will find four files:
- config.h
- keymap.c
- oled.c
- rules.mk

Each of these files contain the necessary pieces of code you need to add in order to get a bongocat running in your firmware.

- **For config.h, add the lines to the end of your own config.h file.**

- **For keymap.c, just add the extra lines after your layers.**

- **For oled.c, just drop it into your keymap folder. It works as is.**

- **For rules.mk, add these rules to your own rules.mk file. Some are this way by default.**


I have also included my keymap folders for both the Lily58 and the CRKBD aka Corne. You can also just drop them into your QMK or VIAL installation and make the firmware that way.

## Lily58 issues

For some reason, the Lily58 firmware still uses deprecated libraries to make it's firmwares. In the keymap folder for the Lily58, there is a file called **layer_state_reader.c**. Make sure you replace the file found in Lib within the Lily58 folder with this file. It contains a fix which is needed in order to run bongocat successfully.

## Advanced (not really, I just like using headings)

If you want the text to be stacked horizontally instead of vertically, write ```return rotation``` instead of ```OLED_ROTATION_270```.

```
oled_rotation_t oled_init_user(oled_rotation_t rotation) {
	if (!is_keyboard_master()) return OLED_ROTATION_180;
    else return OLED_ROTATION_270;
}
```

## Shoutout section
Huge thanks to Migii for helping me with all and any issues. 

I can't remember where I exactly got the files for the bongocat itself, I vaguely remember finding it on reddit. 
Anyhow, heres a few similar projects that I looked at while making the first iterations of my firmwares:

https://www.reddit.com/r/olkb/comments/h00a8b/i_made_an_oled_animation_of_bongo_cat_that/
https://github.com/Rwarcards762/lily58_bongocat

**All credit to them for the bongocat, the animation is in no part my own!**

I will follow this post up with a tutorial on how to get a trackpoint module to work with any QMK keyboard!
