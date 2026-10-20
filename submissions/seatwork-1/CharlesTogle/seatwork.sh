#!/usr/bin/env bash

main(){
	echo "============================="
	echo "CHARLES NATHANIEL B. TOGLE"
	echo "IV-DCSAD"
	echo "============================="
	pwd
	ls -la
	mkdir practice_cli
	cd practice_cli
	touch notes.txt
	echo "Hello Linux" > notes.txt
	echo "Learning CLI is fun!" >> notes.txt
	echo "printing notes.txt contents: " 
	cat notes.txt
	cp notes.txt backup_notes.txt
	mv backup_notes.txt notes_backup.txt
	mkdir docs
	mv notes_backup.txt docs/
	echo "moved backup_notes.txt to ./docs" && ls docs
	ls -l notes.txt
	echo "Adding execute permission for file owner..."
	chmod u+x notes.txt
	echo "done"
	echo "Removing write permission from other users..."
	chmod o-w notes.txt
	echo "done"
	ls -l notes.txt	
	echo "I am $(whoami)"
	echo "Today is $(date)"
	echo "Printing Processes: "
	whoami
	date
	ps aux
	pgrep bash
	echo "Current directory contents:"
	echo "$(find ../practice_cli)"
	cd ..
	echo "Running Cleanup..."
	rm -r practice_cli
	echo "Cleanup Done..."
	echo "Directory Contents"
	find ./
	echo "Exiting"
}

start_ms=$(date +%s%3N)
echo "Starting seatwork.sh by Charles"
main
end_ms=$(date +%s%3N)
echo "Done in $((end_ms - start_ms)) ms!"
