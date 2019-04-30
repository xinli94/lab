FROM pytorch/pytorch:1.0.1-cuda10.0-cudnn7-devel

# system
RUN apt update && apt install -y libffi-dev gettext freeglut3-dev libsdl2-dev zip libosmesa6-dev python-dev python-numpy python-pil wget tree vim less git

# bazel
RUN wget https://github.com/bazelbuild/bazel/releases/download/0.24.1/bazel-0.24.1-installer-linux-x86_64.sh
RUN chmod +x bazel-0.24.1-installer-linux-x86_64.sh
RUN ./bazel-0.24.1-installer-linux-x86_64.sh --user
ENV PATH=${PATH}:/root/bin

# other
RUN conda install -y numpy==1.16.3

WORKDIR /workspace
RUN git clone https://github.com/xinli94/lab.git
