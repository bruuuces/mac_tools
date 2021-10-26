#!/bin/sh

current_branch=`git branch | sed -n '/\* /s///p'`

/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome https://git.youle.game/pandora/backend/server/-/merge_requests/new\?merge_request\[source_branch\]\=${current_branch}\&merge_request\[target_branch\]\=$1
