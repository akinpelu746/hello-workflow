#!/bin/sh

go run ./worker/main.go & 

sleep 30

go run ./start/main.go && 
while true; do
  sleep 1000
done
