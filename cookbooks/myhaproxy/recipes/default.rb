#
# Cookbook:: myhaproxy
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#node.default['haproxy']['members']=[{
#    "hostname" => "debinn3.mylabserver.com",
#    "ipaddress" => "172.31.30.131",
#    "port" => 80,
#    "ssl_port" => 80
#  }]

node.default['backend']['server']=['54.255.217.40']
include_recipe "haproxy"
