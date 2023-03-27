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

RUN sudo apt-get install libgstreamer1.0-0 gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly gstreamer1.0-libav gstreamer1.0-doc gstreamer1.0-tools gstreamer1.0-x gstreamer1.0-alsa gstreamer1.0-gl gstreamer1.0-gtk3 gstreamer1.0-qt5 gstreamer1.0-pulseaudio -y