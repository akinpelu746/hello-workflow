#!/bin/sh

go run ./worker/main.go & 

sleep 30
go run ./starter/main.go
