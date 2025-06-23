#!/bin/bash

# Define Global Var
export JAVA_HOME=/Users/lixiaoyi/Dev/tool/zulu-21.jdk/Contents/Home
export MAVEN_HOME=/Users/lixiaoyi/Dev/tool/apache-maven-3.8.8
export TOOLBOX_HOME=/Users/lixiaoyi/Dev/my-messy-toolbox

# Define Node JS
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


export PATH=$JAVA_HOME/bin:$MAVEN_HOME/bin:$TOOLBOX_HOME:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Applications/iTerm.app/Contents/Resources/utilities


