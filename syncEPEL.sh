# this process is working for centos7

yum install yum-utils
yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
reposync --repoid=epel --download_path=/var/www/html/epel
restorecon -r /var/www/html
systemctl restart httpd
# for creating the repo resolvable from any client
cd /var/www/html/epel/epel/
createrepo -v .
