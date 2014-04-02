Shell Tools
===========

Shell scripts that might come in quite handy. You can add the `bin` folder to your `PATH` for convenience.
```bash
export PATH="/path/to/noyoucmon/shell-tools/bin:$PATH"
```

## kk-filesexist
Check directory content against a file list. The text file containing teh file list must contain one file path on each line.

Contents of "filelist.txt"
```bash
/this/my/file.png
/this/my/other/file.jpg
```

```bash
kk-filesexist --list "filelist.txt"
```

## kk-gitexport
Exports the current repo into a ZIP file. `-b` defaults to `master`.

```bash
kk-gitexport [-b BRANCH]
```

## kk-imageresize
Batch resize image with imagemagick's convert command. Images will be resized to the dimensons given in --size "widthxheigt".
Puts resized images in a directory named like the --size parameter.

```bash
# Usage
kk-imageresize --size "widthxheight"

# Options
-s, --size  "widthxheight"  Set destination size 
                            and destination folder name
-h, --help                  Display this help message
```