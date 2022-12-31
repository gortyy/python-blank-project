#!/usr/bin/env bash

find ./ -type f -exec sed -i -e "s/blank_project/$1/g" {} \;
find ./ -type f -exec sed -i -e "s/blank-project/$2/g" {} \;
mv blank_project "$1"