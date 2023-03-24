#!/bin/bash
echo "$(<$1)" >> $1
tail -f $1
