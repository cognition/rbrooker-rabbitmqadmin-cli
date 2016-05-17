# RabbitMQ Admin CLI


Docker container with all parts for running the RabbitMQ Admin (Management) plugin via cmdline




Volume mount 
------------
you can mount a directory in the root /certs for sharing configuration files with the container. 
Such as for import rabbitmq-vhost.json 


Usage
-----

docker run -it -v ~/configs:/configs rbrooker/rabbitmqadmin-cli 

$:rabbitmqadmin -H <hostname> -u <username> -p <password>  cmd 





Maintained by
-------------

Ramon Brooker <rbrooker@aetherealmind.com>



