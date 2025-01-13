!/bin/bash

while true; do
    echo "=============================="
    echo " XAMPP Control Panel"
    echo "Hi, I’m Asadullah Nadeem."
    echo "=============================="
    echo "0. Start GUI XAMPP"
    echo "1. Start XAMPP"
    echo "2. Stop XAMPP"
    echo "3. Restart XAMPP"
    echo "4. Exit"
    echo "=============================="
    read -p "Choose an option (0-4): " choice


    case $choice in
        0) 
            echo "Starting GUI XAMPP..."
            sudo /opt/lampp/manager-linux-x64.run
            ;;
        1)
            echo "Starting XAMPP..."
            sudo /opt/lampp/lampp start
            ;;
        2)
            echo "Stopping XAMPP..."
            sudo /opt/lampp/lampp stop
            ;;
        3)
            echo "Restarting XAMPP..."
            sudo /opt/lampp/lampp restart
            ;;
        4)
            echo "Are you sure you want to exit? (y/n)"
            read confirm_exit
            if [[ "$confirm_exit" =~ ^[Yy]$ ]]; then
                echo "Goodbye! Exiting..."
                exit 0
            else
                echo "Returning to menu..."
            fi
            ;;
        *)
            echo "Invalid option. Please try again."
            ;;
    esac
done
