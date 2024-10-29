FROM ubuntu

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y build-essential
RUN apt-get install -y git
RUN apt-get install -y wget
RUN apt-get install -y python3
RUN apt-get install -y zip
RUN apt-get install -y bowtie
RUN apt-get clean

WORKDIR /opt

RUN git clone https://github.com/rajewsky-lab/mirdeep2.git

WORKDIR /opt/mirdeep2

RUN perl install.pl
RUN /bin/bash -c "source ~/.bashrc" && perl install.pl

ENV PATH /opt/mirdeep2/bin:$PATH
ENV PERL5LIB /opt/mirdeep2/lib/perl5
