#! /bin/bash
while true
do
    echo "Enter 1 for SELECT Utility and 2 for WHILE Utility and 3 to EXIT"
    read s
    case $s in
    1)
        # USING SELECT UTILITY
        select option in "Press 1 to ls" "Press 2 to ls -a" "Press 3 to exit"
        do 
        case $REPLY in 
        1)
            ls
        ;;
        2)
            ls -a
        ;;
        3)
            exit
        ;;
        *)
        echo "Choose one of three options you have"
        esac
        done
    ;;
    2)
        # USING WHILE UTILITY
        while true
        do 
        echo "Press 1 to ls"
        echo "Press 2 to ls -a"
        echo "Press 3 to exit"
        read
        case $REPLY in 
        1)
            ls
        ;;
        2)
            ls -a
        ;;
        3)
            exit
        ;;
        *)
            echo "Choose from above options"
        esac
        done
    ;;
    3)
        exit
    ;;
    *)
    echo "Choose one of three options you have"
    esac
done



