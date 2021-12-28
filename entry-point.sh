#!/bin/sh

go run ./worker/main.go & 

sleep 30

go run ./starter/main.go && 
while true; do
  sleep 1000
done
