#!/usr/bin/env bash

# --- Part 1: Navigation & File Operations --- #

# Cleanup existing directories and files, if any. This is only used during development and testing.
#rm -rf practice_cli

# Display the current working directory.
pwd

# List all files (including hidden ones) in long format.
ls -la

# Create a directory named `practice_cli`.
mkdir practice_cli

# Move into the `practice_cli` directory.
cd practice_cli

# Create an empty file named `notes.txt`.
touch notes.txt

# Write the text `"Hello Linux"` into `notes.txt`.
echo "Hello Linux" > notes.txt

# Append `"Learning CLI is fun!"` to `notes.txt`.
echo "Learning CLI is fun!" >> notes.txt

# Display the contents of `notes.txt`.
cat notes.txt

# --- Part 2: File & Directory Management --- #

# Cleanup existing directories and files, if any. This is only used during development and testing.
#rm -rf docs

# Copy `notes.txt` to `backup_notes.txt`.
cp notes.txt backup_notes.txt

# Rename `backup_notes.txt` to `notes_backup.txt`.
mv backup_notes.txt notes_backup.txt

# Create a subdirectory named `docs` and move `notes_backup.txt` into it.
mkdir docs
mv notes_backup.txt docs/

# --- Part 3: Permissions --- #

# Set permissions on `notes.txt` to `644` to ensure a consistent starting point. This is only used during development and testing.
# chmod 644 notes.txt

# View file permissions for `notes.txt`.
ls -l notes.txt

# Give the owner execute permission for `notes.txt`.
chmod u+x notes.txt

# Remove write permission for others on `notes.txt`.
chmod o-w notes.txt

# **Checkpoint — show it worked.** Run `ls -l notes.txt` one more time and let it print. This is your only evidence that steps 13–14 actually changed anything, so don't skip it:
ls -l notes.txt

# --- Part 4: Process & System Info --- #

# Display the current logged-in user.
whoami

# Show the current date and time.
date

# Display running processes.
ps aux

# Find the process ID (PID) of `bash`.
pgrep bash

# --- Part 5: Cleanup --- #

# Go back to the directory you started from, then remove `practice_cli` and everything in it.

# NOTE: I didn't use `cd ~` because my working directory is not my home directory. Instead, I will use relative directory changing, i.e., `cd ..`.
# cd ~
cd ..
rm -rf practice_cli/