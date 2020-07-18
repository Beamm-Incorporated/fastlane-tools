FROM fastlanetools/fastlane

RUN curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash

RUN sudo apt-get install git-lfs

RUN git lfs install