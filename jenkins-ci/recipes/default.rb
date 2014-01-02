#
# Author:: Peter
# Cookbook Name:: jenkins-ci
# Recipe:: default
#

bash "add_jenkins_repo" do
  user "ec2-user"
  cwd "/tmp"
  code <<-EOH
    sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
    sudo rpm --import http://pkg.jenkins-ci.org/redhat/jenkins-ci.org.key
  EOH
end

yum_package "jenkins" do
  action :install
end
 
cookbook_file "/etc/nginx/conf.d/jenkins.conf" do
  source "jenkins.conf"
  mode "0644"
end 
  
service "nginx" do
  action :restart
end

service "jenkins" do
  action :start
end