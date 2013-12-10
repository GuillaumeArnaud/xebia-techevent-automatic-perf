# Graphite Ansible module

The goal of this Ansible module is to create Amazon EC2 instances and install a working Graphite installation on each of them. Besides, [Diamond](https://github.com/BrightcoveOS/Diamond) is installed too to add some metrics.

## Prerequisites

* Ansible must be installed
* [Boto](https://github.com/boto/boto) must be installed (eg with PIP)
* The following environment variables must be set :
  * AWS_ACCESS_KEY
  * AWS_SECRET_KEY
* Edit ansible.cfg file and in the defaults part, add the following line :
  * host_key_checking = False
* The SSH key used for each instance must be in your ssh agent (ssh-agent bash && ssh-add /path/to/ec2/key.pem)
* Add a group in your /etc/ansible/hosts file with :
  ```[localhost]
  localhost
  ```

## Configuration

You can edit de ``var`` part of the ec2-graphite.yaml to change the configuration :

* keyname : The name of the EC2 SSH key to use for each instance
* count : The number of instance to run
* instance_name : A list with the names of each instance. It will be used to set *Name* tag and CNAME DNS. **The size of this list must be equal to ``count``**
* instance_type : The EC2 instance type (t1.micro, m1.small, etc ...)
* group : Security group to use in EC2
* ami : EC2 image to use. Tested only with Amazon Linux. Should work with RHEL/Centos too but must be changed for Debian/Ubuntu
* ec2_url : EC2 URL (ec2.eu-west-1.amazonaws.com for Ireland, ec2.us-east-1.amazonaws.com for Virginia, etc ...). [List of URLs](http://www.gnuyoga.in/2012/09/amazon-ec2-command-line-ec2url.html).
* region : EC2 Region (eu-west-1, us-east-1, etc ...).
* dns_zone : If you have a Route 53 configuration, it will create CNAME for each instance with ``<instance_name>.<dns_zone>``. Remove this variable to skip this step.

## How to run

``ansible-playbook ec2-graphite.yaml``
