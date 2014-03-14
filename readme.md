Shell Tools
===========

Shell scripts that might come in quite handy. You can add the `bin` folder to your `PATH` for convenience.
```bash
export PATH="/path/to/noyoucmon/shell-tools/bin:$PATH"
```

## kk-gitexport
Exports the current repo into a ZIP file. `-b` defaults to `master`.

```bash
git-export [-b BRANCH]
```

## kk-imageresize
Batch resize image with imagemagick's convert command. Images will be resized to the dimensons given in --size "widthxheigt".
Puts resized images in a directory named like the --size parameter.

```bash
# Usage
    sh kk-imageresize.sh -s widthxheight

# Options
    -s, --size  "widthxheight"  Set destination size (which is also the name of the resized images' destination folder)
    -h, --help                  Display this help message"
```