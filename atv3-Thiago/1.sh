#!/bin/bash

ls ${1} &> /dev/null && echo "sim" || echo "nao"
