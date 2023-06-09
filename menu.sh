#!/bin/bash

# Function to display the main menu
function show_menu {
    clear
    echo "--------------------------------------------------------"
    echo "               UNSC Data Terminal"
    echo "--------------------------------------------------------"
    echo ""
    echo "[Terminal]"
    echo ""
    echo "What would you like to do?"
    echo ""
    echo "1. Start Game"
    echo "2. Load Game"
    echo "3. Options"
    echo "4. Exit"
    echo ""
    read -p "Enter your choice: " choice
    echo ""
    
    case $choice in
        1)
            start_game
            ;;
        2)
            echo "Loading saved game..."
            # Add code to load game
            ;;
        3)
            echo "Options menu..."
            # Add code for options
            ;;
        4)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid choice. Please try again."
            read -p "Press Enter to continue..."
            show_menu
            ;;
    esac
}

# Function to start the game
function start_game {
    echo "Starting the game..."
    ./introduction.sh
    read -p "Press Enter to continue..."
    clear
    show_menu
}

# Main script
show_menu
