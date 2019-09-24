FROM ubuntu

RUN apt-get update && apt-get install -y build-essential git wget python zip

WORKDIR /opt

RUN git clone https://github.com/rajewsky-lab/mirdeep2.git

WORKDIR /opt/mirdeep2

RUN perl install.pl
RUN /bin/bash -c "source ~/.bashrc" && perl install.pl

ENV PATH /opt/mirdeep2/bin:$PATH
