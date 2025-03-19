#! /bin/bash    
backup_dir="$HOME/backup"
for file in "$HOME"/*
do
  if [[ -f "$file" ]]
  then
    cp "$file" "$backup_dir"
  fi
done

echo "Backup completed. Files copied to $backup_dir"
