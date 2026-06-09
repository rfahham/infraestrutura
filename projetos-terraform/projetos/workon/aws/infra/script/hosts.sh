
sudo su
cat /etc/ansible/hosts
echo "" > /etc/ansible/hosts
echo "[instances]" > /etc/ansible/hosts
echo "ec2-user@ec2-54-167-98-217.compute-1.amazonaws.com" >> /etc/ansible/hosts
echo "ec2-user@ec2-18-234-171-104.compute-1.amazonaws.com" >> /etc/ansible/hosts
cat /etc/ansible/hosts



sudo /bin/sh -c 'echo "[instances]" > /etc/ansible/hosts "\n""ec2-user@ec2-54-167-98-217.compute-1.amazonaws.com" >> /etc/ansible/hosts "\n""ec2-user@ec2-18-234-171-104.compute-1.amazonaws.com" >> /etc/ansible/hosts'