#!/bin/bash
apt-get update
apt-get install -y tree
apt-get install -y vim wget dialog net-tools
apt-get install -y nginx
apt-get install -y npm
apt-get install -y git
apt-get install -y sqlite3
mkdir /app
cd /app
git clone https://github.com/hectorserranodelafuente/stepByStep.git
cd /app/stepByStep
git checkout v2.2.0