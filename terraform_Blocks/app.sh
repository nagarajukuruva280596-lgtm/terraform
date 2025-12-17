sudo apt update -y
sudo apt install apache2 -y
sudo systemctl stop apache2
sudo systemctl start apache2
sudo systemctl enable apache2
