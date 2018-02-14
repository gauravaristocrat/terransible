# Ansible build from scratch
If you get into the situation of an outdated linux box. 
You can install all dependencys by yourself without root access.

1. Download Python3.5+ since Ansible 2.4+ does not support Python3.4 anymore.
Requires _libssl-dev_ package or download openssl sources too.
```commandline
wget https://www.python.org/ftp/python/3.5.5/Python-3.5.5.tgz
tar xzvf Python-3.5.5.tgz
./configure --prefix=$HOME/py3.5.5 --with-zlib
make
make install
```

2. Create virtual environment and let pip install dependencies
```commandline
python3.5 -m venv venv
source venv/bin/activate
pip install ansible
```
