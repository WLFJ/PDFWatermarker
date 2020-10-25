#!/bin/bash

# 现在要实现分目录存储
for EACH in pdf/*.pdf
do
    BNAME=$(basename "$EACH")
    pdftk water1.pdf background "$EACH" output "./head/$BNAME" && pdftk "./head/$BNAME" background water2.pdf output "./res/$BNAME"
done
rm ./head/*.pdf
