#!/bin/bash

# Path to the kitty configuration file
config_file="$HOME/.config/kitty/current-theme.conf"

# Check if the background_opacity 0.9 setting exists
if grep -q "background_opacity 0.9" "$config_file"; then
    # Replace 0.9 with 1
    sed -i '' 's/background_opacity 0.9/background_opacity 1/g' "$config_file"
    echo "Increased background opacity. Please reload kitty config!"
    
# Check if the background_opacity 1 setting exists
elif grep -q "background_opacity 1" "$config_file"; then
    # Replace 1 with 0.9
    sed -i '' 's/background_opacity 1/background_opacity 0.9/g' "$config_file"
    echo "Decreased background opacity. Please reload kitty config!"

else
    # Inform user if no matching setting was found
    echo "There's no background_opacity 0.9 or 1 present in the current kitty config."
fi

