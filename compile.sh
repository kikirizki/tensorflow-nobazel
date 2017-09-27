g++ -std=c++11 -Wl,-rpath='$ORIGIN/lib' -Iinclude -Llib test.cpp -ltensorflow_cc -o exec
