#!/bin/bash

DATE=`date +%Y-%m-%d_%H-%M-%S`

WORKSPACES_DIR=../textsum_workspaces
mkdir -p $WORKSPACES_DIR

WORKSPACE_DIR=$WORKSPACES_DIR/textsum_workspace_$DATE
mkdir $WORKSPACE_DIR
cd $WORKSPACE_DIR

touch WORKSPACE
cp -r ../../textsum .

mkdir data
cp textsum/data/vocab data/.
cp textsum/data/data  data/

bazel build -c opt --config=cuda textsum/...

echo $WORKSPACE_DIR