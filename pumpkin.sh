#!/bin/bash 
# 
# Create a Jack-O Lantern on the terminal 
# Creator: Abraham Saldivar 
# Date: October 31, 2025

COLORS=(196 208 117 42 91 47 20)
MESSAGE="HAPPY HALLOWEEN!" 
FROM_MESSAGE="From ABRAHAM SALDIVAR 🎃"


cols=$(tput cols)
rows=$(tput lines)

pumpkin_height=20
pumpkin_width=70

start_row=$(( (rows - pumpkin_height) / 2 ))
start_col=$(( (cols - pumpkin_width) / 2 ))

while true; do 
    for color in "${COLORS[@]}"; do 
        clear
        tput cup $start_row $start_col
        echo -ne "\033[38;5;${color}m
                  ⠀⢀⣾⡷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
        ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
        ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣽⣦⣀⡀⠤⠤⣤⣀⡀⠀⠀⠀⠀⠀
        ⠀⠀⠀⠀⣀⠴⠊⡉⠔⢛⠭⠉⡇⠙⢄⠈⠐⠮⡉⠒⠬⣑⠢⣀⠀⠀
        ⠀⠀⣠⠞⠁⡴⠋⠀⡰⠊⡀⠀⢸⠀⠀⢣⠀⠀⣦⢄⡀⠈⠣⡈⢧⡀
        ⠀⡔⠁⢀⠎⠀⠀⡰⢡⢮⣇⠀⢸⠀⠀⠀⠃⠀⣿⣦⡙⡄⠀⢷⡀⢃
        ⠸⠁⠀⡞⠀⠀⢀⣇⡇⣾⣿⣆⠀⠀⠀⠀⡸⠘⠛⠛⠛⡉ ⠀⠀⡇⢸
        ⡆⠀⢸⠀⠀⠀⢸⠉⠉⠉⠉⠁⠀⠀⢻⣿⢹⠀⠀⠀⠀⣠  ⠀⠀⠁⢸
        ⡇⠀⢸⠀⠀⠀⠘⠀⠀⠀⠀⠀⠀⡀⠀⠫⢾⠀⢀⣤⢞⠋⠀  ⢠⠃⠸
        ⢡⠀⠈⠀⠀⠀⠈⢳⡦⣄⣀⣤⣀⣧⣶⣤⣾⣿⣿⣣ ⢫⠀⠀⡏⢠⠆
        ⠈⢧⡀⠑⡀⠀⠀⠘⠝⠾⠿⣿⣿⡿⠿⡿⠛⠏⠉⠀⡜⢠⠞⣠⠏⠀
        ⠀⠀⠳⣄⠈⢤⠀⠀⠈⢢⡀⠈⠋⡇⠀⠀⠸⠀⠀⡔⡠⣋⡴⠋⠀⠀
        ⠀⠀⠀⠈⠙⠲⠯⠶⢤⣀⣑⣦⣀⡇⠤⠴⠥⠴⠚⠈⠉⠁⠀⠀⠀⠀
        \r"

        tput cup $start_row $((start_col + 50))
        echo -e "\033[38;5;${color}m${MESSAGE}\033[0m"
        tput cup $((start_row + 1)) $((start_col + 50))
        echo -e "\033[38;5;${color}m${FROM_MESSAGE}\033[0m"

        sleep 2.5
    done 
done

