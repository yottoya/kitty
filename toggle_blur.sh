#!/bin/bash
#
# # Path to the kitty configuration file
# config_file="$HOME/.config/kitty/current-theme.conf"
#
# # Check if an argument is provided
# if [ $# -eq 0 ]; then
#     echo "No blur level provided. Usage: $0 <blur-level>"
#     exit 1
# fi
#
# new_blur=$1
#
# # Check if the background_blur setting exists
# if grep -q "background_blur" "$config_file"; then
#     # Replace the current blur level with the new one
#     sed -i '' "s/background_blur [0-9]\+/background_blur $new_blur/g" "$config_file"
#     echo "Background blur set to $new_blur. Please reload kitty config!"
# else
#     # Add the background_blur setting if it doesn't exist
#     echo "background_blur $new_blur" >> "$config_file"
#     echo "Background blur added. Please reload kitty config!"
# fi



# Path to the kitty configuration file
config_file="$HOME/.config/kitty/current-theme.conf"

# Check if an argument is provided
if [ $# -eq 0 ]; then
    echo "No blur level provided. Usage: $0 <blur-level>"
    exit 1
fi

new_blur=$1

# Output current setting
echo "Current background_blur setting:"
grep "background_blur" "$config_file"

# Check if the background_blur setting exists
if grep -q "background_blur" "$config_file"; then
    # Replace the current blur level with the new one
    sed -i '' "s/background_blur [0-9]*\(\.[0-9]*\)\?/background_blur $new_blur/" "$config_file"
    echo "Background blur set to $new_blur. Please reload kitty config!"
else
    # Add the background_blur setting if it doesn't exist
    echo "background_blur $new_blur" >> "$config_file"
    echo "Background blur added. Please reload kitty config!"
fi

# Output updated setting
echo "Updated background_blur setting:"
grep "background_blur" "$config_file"
