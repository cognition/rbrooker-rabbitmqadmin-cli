FROM python


MAINTAINER Ramon Brooker





ADD  http://wtlramon1.wtldev.net:15672/cli/rabbitmqadmin   /usr/bin/rabbitmqadmin
ADD  bashrc  /root/.bashrc

RUN chmod 744 /usr/bin/rabbitmqadmin; mkdir /certs

RUN apt-get update; apt-get install -y bash-completion; apt-get -y autoremove ; pt-get clean && rm -rf /var/lib/apt/lists/*  ;



RUN rabbitmqadmin --bash-completion >> /etc/bash_completion.d/rabbitmqadmin.bash-completion





VOLUME ["/configs"]





ENTRYPOINT /bin/bash
