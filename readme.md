Shell Tools
===========

Some shell scripts that might come in quite handy. You can add the `bin` folder to your `PATH` for convenience.
```bash
export PATH="/path/to/noyoucmon/shell-tools/bin:$PATH"
```

## kk-filesexist
Check directory content against a file list. The text file containing the file list must contain one file path per line.

Contents of "filelist.txt"
```bash
/this/my/file.png
/this/my/other/file.jpg
```

```bash
kk-filesexist --list "filelist.txt"
```

## kk-gitexport
Exports the current Git repository into a ZIP file. `-b` defaults to `master`.

```bash
kk-gitexport [-b BRANCH]
```

## kk-imageresize
Batch resize images with imagemagick's convert command. Images will be resized to the dimensons given in `--size` "widthxheigt".
Resized images are put in a directory named after the `--size` parameter, e. g, `./widthxheight`.

```bash
# Usage
kk-imageresize --size "widthxheight"

# Options
-s, --size  "widthxheight"  Set destination size 
                            and destination folder name
-h, --help                  Display this help message
```
