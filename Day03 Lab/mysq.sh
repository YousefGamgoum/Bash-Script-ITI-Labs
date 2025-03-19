#! /bin/bash
mysq(){
    echo $(( $1 * $1 ))
}

mysq "$1";