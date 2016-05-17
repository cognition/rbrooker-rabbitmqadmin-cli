FROM python


MAINTAINER Ramon Brooker





ADD  http://wtlramon1.wtldev.net:15672/cli/rabbitmqadmin   /usr/bin/rabbitmqadmin
ADD  bashrc  /root/.bashrc

RUN chmod 744 /usr/bin/rabbitmqadmin

RUN apt-get update; apt-get install -y bash-completion; apt-get -y autoremove 

RUN rabbitmqadmin --bash-completion >> /etc/bash_completion.d/rabbitmqadmin.bash-completion



#ADD rabbitconfig.json /rabbitconfig.json
#RUN echo " -H  wtlramon2 -u admin -p admin" >> /root/.rabbitmqadmin
ENTRYPOINT /bin/bash
