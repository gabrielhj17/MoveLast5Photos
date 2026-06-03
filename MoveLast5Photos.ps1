# Path to your uploads folder
$source = "C:\Path\To\Uploads\Folder"

# Destination folder passed from right-click menu
$dest = $args[0]

# Get the 5 most recent image files
$files = Get-ChildItem -Path "$source\*" -Include *.jpg, *.jpeg, *.png, *.gif, *.bmp, *.heic -File |
         Sort-Object LastWriteTime -Descending |
         Select-Object -First 5

# Move them
foreach ($file in $files) {
    Move-Item -Path $file.FullName -Destination $dest -Force
}
