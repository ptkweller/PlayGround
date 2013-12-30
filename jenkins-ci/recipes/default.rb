#
# Author:: Peter
# Cookbook Name:: jenkins-ci
# Recipe:: default
#

#remote_file "/var/lib/tomcat7/webapps/jenkins.war" do
#  source "http://mirrors.jenkins-ci.org/war/latest/jenkins.war"
#  mode 00755
#end

#bash "install_something" do
#  user "root"
#  cwd "/tmp"
#  code <<-EOH
#    sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
#    sudo rpm --import http://pkg.jenkins-ci.org/redhat/jenkins-ci.org.key
#    sudo yum install jenkins
#  EOH
#end

# spec_helper.rb
require 'chefspec'
require 'chefspec/berkshelf'


  yum_key 'RPM-GPG-KEY-jenkins-ci' do
    url 'http://pkg.jenkins-ci.org/redhat/jenkins-ci.org.key'
    action :add
  end

  yum_repository 'jenkins-ci' do
    url 'http://pkg.jenkins-ci.org/redhat'
    key 'RPM-GPG-KEY-jenkins-ci'
    action :add
  end
  
package 'jenkins' do
  action :install
end