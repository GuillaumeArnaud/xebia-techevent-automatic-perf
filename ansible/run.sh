echo "StrictHostKeyChecking no" >> ~/.ssh/config
export AWS_ACCESS_KEY=AKIAJJWGCHMN5DLV5O3Q
export AWS_SECRET_KEY=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
ansible-playbook -vvvv ec2.yml --extra-vars "user=ec2-user id=$1" --private-key ssh/gatling-gar.pem 
