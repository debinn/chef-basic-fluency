#
# Cookbook:: manage_users
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

users = search("users","platform:centos")
groups = search("groups","platform:centos")

users.each do |user|
	user user['id'] do
		comment user['comment'] 
		uid user['uid'] 
	        gid user['gid'] 
		home user['home']
	        shell user['shell']
	end
end

groups.each do |group|
	group group['id'] do 
		gid group["gid"]
		members group["members"]
		append true 
	end 
end
