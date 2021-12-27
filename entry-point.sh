#!/bin/sh

go run ./worker/main.go & 

go run ./starter/main.go
