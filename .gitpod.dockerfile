# You could use `gitpod/workspace-full` as well.
FROM gitpod/workspace-full-vnc

USER gitpod

RUN pyenv install 3.8.10 \
    && pyenv global 3.8.10

RUN git clone https://github.com/swig/swig.git \ 
    && cd swig \
    && sudo apt-get install automake -y \
    && ./autogen.sh \
    && ./configure \
    && sudo apt-get install bison flex -y \
    && make \
    && sudo make install

RUN sudo apt-get update && sudo apt-get install -y \
    python-dev libsdl-image1.2-dev libsdl-mixer1.2-dev libsdl-ttf2.0-dev libsdl1.2-dev libsmpeg-dev python-numpy subversion libportmidi-dev ffmpeg libswscale-dev libavformat-dev libavcodec-dev