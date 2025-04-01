#!/bin/sh

RC_FILE=$HOME/.`basename $SHELL`rc

grep "source ~/.aliases.sh" $RC_FILE
if [ $? -ne 0 ]
then
  echo "source ~/.aliases.sh" >> $HOME/.`basename $SHELL`rc;
fi

source $HOME/.`basename $SHELL`rc

