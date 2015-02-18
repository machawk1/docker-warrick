FROM ubuntu
MAINTAINER Mat Kelly <mkelly@cs.odu.edu>

ENV URI /uri

RUN apt-get update && apt-get -y install git make perl cpanminus python curl libcurl3 libcurl3-dev supervisor build-essential

# From the INSTALL file
RUN perl -MCPAN -e 'install HTML::TagParser'
RUN perl -MCPAN -e 'install HTML::LinkExtractor'
RUN perl -MCPAN -e 'install HTTP::Cookies'
RUN perl -MCPAN -e 'install HTTP::Status'
RUN perl -MCPAN -e 'install "URI"' #double quoting URI seems to fix the issue
RUN perl -MCPAN -e 'install CSS'
RUN perl -MCPAN -e 'install "HTTP::Date"'
RUN perl -MCPAN -e 'install Getopt::Long'

RUN perl -MCPAN -e 'install Bundle::LWP'
RUN perl -MCPAN -e 'install HTML::LinkExtractor'

RUN git clone https://code.google.com/p/warrick/ /warrick
ENTRYPOINT ["perl", "/warrick/warrick.pl", "-D", "/output", ${URI}]
