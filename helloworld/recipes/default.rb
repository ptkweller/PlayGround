#
# Author:: Peter
# Cookbook Name:: PlayGround
# Recipe:: default
#
# Install apache
package 'apache2' do
  case node[:platform]
  when 'centos','redhat','fedora','amazon'
    package_name 'httpd'
  when 'debian','ubuntu'
    package_name 'apache2'
  end
  action :install
end

# Start apache service
service "apache2" do
  action [:start, :enable]  
end

# Home page
cookbook_file "/var/www/index.html" do
  source "index.html"
  mode "0644"
end