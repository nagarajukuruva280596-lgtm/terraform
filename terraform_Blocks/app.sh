sudo apt update -y
sudo apt install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd
echo "<h1>welcome to ASG $(hostname -f)</h1>" > /var/www/html/index.html