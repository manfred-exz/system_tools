# Use this script, if you want to disable all devices(mouse/keyboard) to wake up your computer from suspend.
# Note, you have to **disable all wake-armed-devices** to make it work. Otherwise, USB devices can still wake 
# up your computer, even that USB device is not "wake-armed".

# This may output the following error message, but it's OK:
#   Unable to perform operation.  An unexpected error (0x490) has occurred:  Element not found.
# OR
#   Invalid Parameters -- try "/?" for help
powershell -Command "powercfg /devicequery wake_armed | ForEach{ powercfg /devicedisablewake $_ }"

# If this works, the following command should output NONE:
#   powercfg /devicequery wake_armed
