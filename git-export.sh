#!/bin/sh

DATE=$(date +"%Y-%m-%d--%H-%M-%S")
REPO=$(awk -F/ '{ print $NF}' <<<"$(git rev-parse --show-toplevel)")
BRANCH=$(git branch | awk '$1 == "*" { print $2 }')
SEP="\033[35m>>>\033[0m"

echo "\n\033[35m*\033[0m \033[36mExporting repo\033[0m \033[33m$REPO\033[0m \033[35m*\033[0m"
while getopts "b:o:" opt;
do
  case $opt in
    b)
        if [ git branch | grep $OPTARG > /dev/null ];
        then
            BRANCH=$OPTARG
            echo $SEP "Setting branch to \033[36m<$BRANCH>\033[0m."
        else
            echo $SEP "Could not find local branch \033[31m<$OPTARG>\033[0m, exporting \033[36m<$BRANCH>\033[0m instead."
        fi
        ;;
    o)
        echo $SEP "Option -o not yet implemented."
        ;;
    \?)
        echo $SEP "Invalid option: -$OPTARG"
        ;;
  esac
done

FILENAME=$REPO-$DATE-$BRANCH.zip

echo $SEP "Exporting branch \033[36m<$BRANCH>\033[0m to \033[36m$FILENAME\033[0m ..."
git archive --format zip --output $FILENAME $BRANCH
wait
echo $SEP "Done.\n\n"
