#!/bin/bash

function Clean()
{
    cmd="rm -vf bin/*"
    echo "do clean"
    echo "$cmd"
    $cmd
}

function Build()
{
    cmd="make"
    echo "do build"
    echo "$cmd"
    $cmd
}

function Test()
{
    cmd="./bin/echo"
    echo "do test"
    echo "$cmd"
    $cmd
}

function Pack()
{
    cmd="tar zcf echo.tar.gz bin/echo"
    echo "do pack"
    echo "$cmd"
    $cmd
}

function Usage()
{
    echo ""
    echo "USAGE:"
    echo "command1: $0 build"
    echo ""
    echo "command2: $0 clean"
    echo ""
    echo "command3: $0 test"
    echo ""
    echo "command4: $0 pack"
    echo ""
}

case $1 in
    build) Build $@;;
    clean) Clean $@;;
    test) Test $@;;
    pack) Pack $@;;
    *) Usage;;
esac
