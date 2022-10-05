VIA_ENABLE = yes
VIAL_ENABLE = yes
OLED_ENABLE = yes
OLED_DRIVER = SSD1306
MOUSEKEY_ENABLE = no
EXTRAKEY_ENABLE = yes
WPM_ENABLE = yes
TAP_DANCE_ENABLE = no
COMBO_ENABLE = no
GRAVE_ESC_ENABLE = no
MAGIC_ENABLE = no
BOOTMAGIC_ENABLE = no

COMMAND_ENABLE = no
CONSOLE_ENABLE = no

QMK_SETTINGS = no
LTO_ENABLE = yes

KEY_OVERRIDE_ENABLE = no

# If you want to change the display of OLED, you need to change here
SRC +=  ./lib/rgb_state_reader.c \
        ./lib/layer_state_reader.c \
        ./lib/logo_reader.c \
        ./lib/keylogger.c \
        # ./lib/mode_icon_reader.c \
        # ./lib/host_led_state_reader.c \
        # ./lib/timelogger.c \