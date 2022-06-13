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
COPY binaries/* /usr/local/bin/


ENTRYPOINT ["/bin/bash"]
