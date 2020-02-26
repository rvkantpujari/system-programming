clear
echo "Please enter the email/username"
read uemail
echo "Please enter the subject"
read sub
echo "Please enter the message: "
read msg
echo $msg | mail -s $sub $uemail
