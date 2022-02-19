#!/bin/bash
#minSize = $1
#maxSize = $2
#fileName = $3
if [[ $# -ne 3 ]]; 
then
{
echo "This command must include 3 parameters"
echo "1 - Minimal file size"
echo "2 - Maximal file size"
echo "3 - Name of the file"
} >&2
else
find $pwd -type f -size +$1M -size -$2M -exec realpath {} \; -printf "%f %s\n" >$3
echo "Number of files: "
numberOfFiles=$(cat $3 | wc -l)
echo $((numberOfFiles/2))
fi
