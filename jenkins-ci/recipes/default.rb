#
# Author:: Peter
# Cookbook Name:: jenkins-ci
# Recipe:: default
#

#remote_file "/var/lib/tomcat7/webapps/jenkins.war" do
#  source "http://mirrors.jenkins-ci.org/war/latest/jenkins.war"
#  mode 00755
#end

bash "add_jenkins_repo" do
  user "ec2-user"
  cwd "/tmp"
  code <<-EOH
    sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
    sudo rpm --import http://pkg.jenkins-ci.org/redhat/jenkins-ci.org.key
#    sudo yum install jenkins
  EOH
end

#git "/opt/mysources/yum" do
#  repository "https://github.com/opscode-cookbooks/yum.git"
#  reference "master"
#  action :sync
#end

#yum_repository 'jenkins-ci' do
#  description "Jenkins CI Repo"
#  baseurl "http://pkg.jenkins-ci.org/redhat/"
#  gpgkey 'http://pkg.jenkins-ci.org/redhat/jenkins-ci.org.key'
#  action :create
#end  

yum_package "nginx" do
  action :install
end

yum_package "jenkins" do
  action :install
end
  
#package 'jenkins' do
#  action :install
#end