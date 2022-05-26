aws ec2 describe-instances --query 'Reservations[].Instances[].[Tags[?Key==`Name`].Value[] | [0]]' --output text | cat >> outputfile.txt

