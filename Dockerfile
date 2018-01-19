FROM leeonky/os-dev:ubuntu

USER $USER_NAME

RUN sudo apt-get update && sudo apt-get install -y \
	maven openjdk-8-jdk

ADD settings.xml $USER_HOME/.m2/settings.xml
	
RUN sudo chown $USER_NAME:$USER_NAME $USER_HOME/.m2/ -R
