yum -y install gcc gcc-c++ python-devel lua-devel
tar xvf ./v8.1.1835
cd ./v8.1.1835

cd vim-8.1.1835/
./configure          --enable-pythoninterp=yes                       --enable-python3interp=yes              --enable-luainterp=yes       --enable-pythoninterp=yes --with-python-config-dir=/usr/lib64/python2.7/config --prefix=/usr

make && make install 
