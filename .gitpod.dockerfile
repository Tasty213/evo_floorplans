# You could use `gitpod/workspace-full` as well.
FROM gitpod/workspace-python

RUN pyenv install 3.8.10 \
    && pyenv global 3.8.10