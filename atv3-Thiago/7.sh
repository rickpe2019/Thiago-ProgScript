#!/bin/bash

(($(id -u)==0)) && echo "error" || echo "Nao foi com usuario root"
