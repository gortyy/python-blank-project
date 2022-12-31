#!/usr/bin/env bash

replace() {
   find ./ -type f \
    -not -path ".//.venv/*" \
    -not -path ".//.idea/*" \
    -not -path ".//.git/*" \
    -not -path ".//tests/*" \
    -not -path ".//.pytest_cache/*" \
    -exec sed -i '' -e "s/$1/$2/g" {} \;
}

replace otomoto_scraper "$1"
replace otomoto-scraper "$2"
mv otomoto_scraper "$1"