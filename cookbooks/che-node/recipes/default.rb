#
# Cookbook Name:: che-node
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
execute 'curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -' do
  command 'curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -'
end
execute "apt-get update" do
  command "apt-get update"
end
package 'nodejs' do
  action :install
end
execute 'npm install gulp -g' do
  command 'npm install gulp -g'
end
execute "apt-get update" do
  command "apt-get update"
end
package 'python-software-properties' do
  action :install
end
package 'python' do
  action :install
end

package "g++" do
  action :install
end

package 'make' do
  action :install
end

package 'libfontconfig' do
  action :install
end

execute "apt-get update" do
  command "apt-get update"
end
package 'build-essential' do
  action :install
end
execute "swap-1" do
  command "dd if=/dev/zero of=/swap bs=1M count=1024"
end
execute "swap-2" do
  command "mkswap /swap"
end

execute "swap-3" do
  command "swapon /swap"
end
package 'libkrb5-dev' do
  action :install
end
execute "node-gyp" do
  command "npm install -g node-gyp"
end

execute "node-pre-gyp" do
  command "npm install -g node-pre-gyp"
end

execute "node-inspector" do
  command "npm install -g node-inspector"
end

execute "supervisor" do
  command "npm install -g supervisor"
end

execute "mocha" do
  command "npm install -g mocha"
end

execute "ny" do
  command "npm install -g ny"
end

execute "ny 1.0.0" do
  command "sudo ny 1.0.0"
end

execute "npm-install" do
  cwd "/vagrant"
  command "sudo npm install --no-bin-links"
  action :run
end

execute "ny latest" do
  command "sudo ny latest"
end