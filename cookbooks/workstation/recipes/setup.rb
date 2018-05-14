package 'ntp' do
	action :install
end
package 'tree' do
	action :install
end
package 'git'

file '/etc/motd' do
	content 'This file is the property of debin chef server'
end
