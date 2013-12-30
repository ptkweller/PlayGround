#
# Author:: Peter
# Cookbook Name:: jenkins-ci
# Recipe:: default
#

remote_file "/var/lib/tomcat7/webapps/jenkins.war" do
  source "http://mirrors.jenkins-ci.org/war/latest/jenkins.war"
  mode 00755
end