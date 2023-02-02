#!/bin/bash
cd
cd $DIR_PATH/comment_system
git restore composer.json
git restore composer.lock
git fetch --tags
git checkout $(git describe --tags $(git rev-list --tags --max-count=1))

