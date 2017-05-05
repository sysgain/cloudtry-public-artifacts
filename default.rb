#
# Cookbook Name:: registry-changes
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
registry_key "HKEY_LOCAL_MACHINE\\System\\CurrentControlSet\\Control\\Lsa" do
  values [{
    :name => 'LmCompatibilityLevel',
    :type => :dword,
    :data => 4
  }]
  action :create
end

registry_key "HKEY_LOCAL_MACHINE\\System\\CurrentControlSet\\Control\\Lsa\\MSV1_0" do
  values [{
    :name => 'NtlmMinClientSec',
    :type => :dword,
    :data => 537395200
  }]
  action :create
end

registry_key "HKEY_LOCAL_MACHINE\\System\\CurrentControlSet\\Control\\Lsa\\MSV1_0" do
  values [{
    :name => 'NtlmMinServerSec',
    :type => :dword,
    :data => 537395200
  }]
  action :create
end

registry_key "HKEY_LOCAL_MACHINE\\Software\\Policies\\Microsoft\\Internet Explorer\\Main" do
  values [{
    :name => 'isolation64Bit',
    :type => :dword,
    :data => 1
  }]
  recursive true
  action :create
end

registry_key "HKEY_LOCAL_MACHINE\\Software\\Policies\\Microsoft\\Windows\\CurrentVersion\\Internet Settings\\Zones\\3" do
  values [{
    :name => '270C',
    :type => :dword,
    :data => 0
  }]
  recursive true
  action :create
end

registry_key "HKEY_LOCAL_MACHINE\\Software\\Policies\\Microsoft\\Windows NT\\Terminal Services" do
  values [{
    :name => 'fpromptForPassword',
    :type => :dword,
    :data => 1
  }]
  action :create
end

registry_key "HKEY_LOCAL_MACHINE\\Software\\Policies\\Microsoft\\Windows NT\\Terminal Services" do
  values [{
    :name => 'MinEncryptionLevel',
    :type => :dword,
    :data => 3
  }]
  action :create
end

registry_key "HKEY_LOCAL_MACHINE\\Software\\Policies\\Microsoft\\Windows\\EventLog\\Application" do
  values [{
    :name => 'MaxSize',
    :type => :dword,
    :data => 100
  }]
  recursive true
  action :create
end
