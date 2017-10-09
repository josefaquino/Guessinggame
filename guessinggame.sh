# !/usr/bin/env bash
# author: JRA

function guess(){
    true_ans=$(ls -l |grep "^-"|wc -l)
    while true;
    do
        echo "Enter your guess"
        read  number
        if [ $number -lt $true_ans ]
        then
            echo "Guess Less then the True number"
        elif [ $number -gt $true_ans ]
        then
            echo "Guess Greater then the True number"
        else
            echo "Congratulations, you are Right!"
        break;
        fi
    done
}
echo "Guess the files number in the current directory!"
guess
