#!/bin/bash
mkdir renode_portable
pushd renode_portable
wget https://builds.renode.io/renode-latest.linux-portable.tar.gz
uzip renode-latest.linux-portable.tar.gz
tar xf renode-latest.linux-portable.tar
