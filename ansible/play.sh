echo "StrictHostKeyChecking no" >> ~/.ssh/config
export AWS_ACCESS_KEY=AKIAJJWGCHMN5DLV5O3Q
export AWS_SECRET_KEY=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
ansible-playbook -vvv $1 --extra-vars "user=ec2-user id=3" --private-key ssh/gatling-gar.pem -i ./hosts/hostnames$2
