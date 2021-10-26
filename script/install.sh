#!/bin/sh

ln -s $HOME/.toolsInfo/locationchanger $HOME/.locations
curl -L https://github.com/eprev/locationchanger/raw/master/locationchanger.sh | bash
