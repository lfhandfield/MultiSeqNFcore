FROM bioconductor/bioconductor_docker:devel

RUN sudo apt-get update && apt-get install -y \
  build-essential vim man xclip libc6-dbg gdb wget valgrind python3.11 python3-pip\
	--no-install-recommends
RUN sudo wget -qO- https://get.nextflow.io | bash
RUN sudo nextflow self-update


CMD ["nextflow"]