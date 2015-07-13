#!/bin/sh

stack exec -- collatz slave localhost 7001 &
stack exec -- collatz slave localhost 7002 &
stack exec -- collatz slave localhost 7003 &
stack exec -- collatz slave localhost 7004 &
stack exec -- collatz master localhost 7000 &
