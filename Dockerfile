FROM ubuntu

RUN apt-get update && apt-get install -y build-essential git wget python zip && apt-get clean

WORKDIR /opt

RUN git clone https://github.com/rajewsky-lab/mirdeep2.git

WORKDIR /opt/mirdeep2

RUN perl install.pl
RUN /bin/bash -c "source ~/.bashrc" && perl install.pl

ENV PATH /opt/mirdeep2/bin:$PATH
ENV PERL5LIB /opt/mirdeep2/lib/perl5
