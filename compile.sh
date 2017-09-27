#!/bin/bash
if [ -e inception_v3_2016_08_28_frozen.pb ]
then
    echo "the frozen graph exist no need to download"
else
    wget https://storage.googleapis.com/download.tensorflow.org/models/inception_v3_2016_08_28_frozen.pb.tar.gz
    tar inception_v3_2016_08_28_frozen.pb.tar.gz 
fi
g++ -std=c++11 -Wl,-rpath='$ORIGIN/lib' -Iinclude -Llib label_image.cpp -ltensorflow_cc -o exec
