#!/usr/bin/bash

PY_ENV="/home/workspace/environment/tissdiss_env"

conda create -y -p $PY_ENV -c conda-forge \
    python=3.9 \
    ipykernel \
    h5py \
    scanpy \
    numpy==1.24.4 \
    pandas anndata \
    matplotlib \
    seaborn \
    dill \

conda activate $PY_ENV

pip install scrublet \
    igraph \
    fa2-modified \
    harmonypy \
    scib[main] \
    celltypist \
    decoupler \
    gprofiler-official \
    gseapy \
    lxml \
    scrublet

python -m ipykernel install --user --name=tissdiss_env --display-name="Python (TissDiss)"