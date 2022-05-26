echo "enter name of instance"
read var 
aws ec2 describe-instances --filters "Name=tag:Name,Values=$var" --query 'Reservations[].Instances[].{InstanceId:InstanceId,PublicIpAddress: PublicIpAddress}' | cat >> output.txt
echo "saved Instance id and ip addresses on the basis of name"
