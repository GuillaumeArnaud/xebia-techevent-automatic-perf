echo "StrictHostKeyChecking no" >> ~/.ssh/config
ansible-playbook -vvv ec2-graphite.yaml --extra-vars "user=ec2-user id=1"
