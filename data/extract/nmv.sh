#!/bin/bash

# Base directory where the original data is located
BASE_DIR="/home/diginori/code/samdulshopmovie/movie_data/data/mv/ogi"

# New base directory where the repNationCd directories will be moved
NEW_BASE_DIR="/home/diginori/code/samdulshopmovie/movie_data/data/mv/new"

# Ensure the new base directory exists
mkdir -p "$NEW_BASE_DIR"

# Iterate over each load_dt directory
for load_dt_dir in "$BASE_DIR"/load_dt=*; do
    # Extract the load_dt directory name (e.g., load_dt=20150101)
    load_dt=$(basename "$load_dt_dir")

    # Create a new directory in the new base directory with the same name
    mkdir -p "$NEW_BASE_DIR/$load_dt"

    # Move the repNationCd=K and repNationCd=F directories to the new location
    for rep_dir in "$load_dt_dir"/repNationCd=*; do
        # Only move directories, not files
        if [ -d "$rep_dir" ]; then
            mv "$rep_dir" "$NEW_BASE_DIR/$load_dt/"
        fi
    done
done
