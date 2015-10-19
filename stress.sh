#!/bin/bash
for z in {1..30} 
do
    for i in {1..10}
    do
        nohup curl http://127.0.0.1:8080/app &
    done
    sleep 20
done

