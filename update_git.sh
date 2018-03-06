#!/bin/bash

git pull

echo "geht" >> git_log
echo "`date -u` `git pull`" >> git_log
