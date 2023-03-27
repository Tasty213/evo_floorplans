# You could use `gitpod/workspace-full` as well.
FROM gitpod/workspace-python

RUN pyenv install 3.8.10 \
    && pyenv global 3.8.10

RUN git clone https://github.com/swig/swig.git \ 
    && cd swig \
    && sudo apt-get install automake \
    && ./autogen.sh \
    && ./configure \
    && sudo apt-get install bison flex \
    && make \
    && sudo make install