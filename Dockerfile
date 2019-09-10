FROM marsbible/ubuntu-dev-brew:latest

MAINTAINER kevin ma <redshift@outlook.com>

USER linuxbrew 
WORKDIR /home/linuxbrew

RUN brew install adoptopenjdk@11 \
  && brew install gradle \
  && curl -fsSL https://search.maven.org/remotecontent?filepath=uk/co/real-logic/sbe-all/1.13.2/sbe-all-1.13.2-all.jar -o /home/linuxbrew/sbe-all-1.13.2-all.jar \
  && go instal golang

