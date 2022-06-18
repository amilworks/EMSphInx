FROM python:3.8.13-buster

# -------------------------------------------------- 
# CMAKE INSTALL
# -------------------------------------------------- 

RUN pip install cmake



RUN apt update &&  apt install -y gcc clang clang-tools 

# -------------------------------------------------- 
# INSTALL EMSPHINX
#
# EMSphInx is a collection of modules and programs 
# that can be used to index a variety of diffraction
# patterns, ranging from EBSD to TKD, ECP,# and x-ray
# Laue patterns.
# -------------------------------------------------- 


WORKDIR /workspace

# -------------------------------------------------- 
# BINARIES 
#
# Compiled Binaries can be downloaded using the following link:
# https://github.com/EMsoft-org/EMSphInx/releases/download/0.2/debian_9_6.tar.xz
# 
# Will push an updated Dockerfile to automatically
# wget these binaries at build time.
# -------------------------------------------------- 


COPY binaries/* /usr/local/bin/


ENTRYPOINT ["/bin/bash"]
