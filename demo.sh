#!/bin/bash

# Ensure dialog is installed
if ! command -v dialog > /dev/null; then
    echo "Please install 'dialog' to run this script."
    exit 1
fi

# Clear the terminal screen
clear

# Create a function for each step
step1() {
    dialog --backtitle "NCurses Wizard" --title "Step 1" --msgbox "Welcome to the NCurses Wizard!\n\nThis is Step 1." 10 40
}

step2() {
    dialog --backtitle "NCurses Wizard" --title "Step 2" --yesno "Step 2: Do you want to proceed?" 10 40
    response=$?
    
    if [ $response -eq 0 ]; then
        dialog --backtitle "NCurses Wizard" --title "Step 2" --msgbox "You chose to proceed!" 10 40
    else
        dialog --backtitle "NCurses Wizard" --title "Step 2" --msgbox "You chose not to proceed." 10 40
    fi
}

step3() {
    input=$(dialog --backtitle "NCurses Wizard" --title "Step 3" --inputbox "Step 3: Enter something" 10 40 3>&1 1>&2 2>&3)
    dialog --backtitle "NCurses Wizard" --title "Step 3" --msgbox "You entered: $input" 10 40
}

finalStep() {
    dialog --backtitle "NCurses Wizard" --title "Final Step" --msgbox "Thank you for using the NCurses Wizard!\n\nYou have completed all the steps." 10 40
}

# Call the functions in order
step1
step2
step3
finalStep
