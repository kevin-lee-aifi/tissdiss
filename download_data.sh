#!/usr/bin/bash

apt-get install unzip

data="/home/workspace/tissdiss/data"
home="/home/workspace/"

gcloud auth login

rm -rf $data
mkdir -p $data

gcloud storage cp gs://experimental-pipeline-data/EXP-00998/EXP-00998_REAMP_h5s.zip $data/
unzip "$data"/*.zip -d "$data"/
mv $home/tissdiss/data/home/jupyter/EXP-00998_REAMP/EXP-00998_REAMP_h5s $home/tissdiss/data/EXP-00998_REAMP_h5s
rm -rf $home/tissdiss/data/home