package 'ntp' do
	action :install
end
package 'tree' do
	action :install
end
package 'git'

template '/etc/motd' do
	source 'motd.erb'
	action :create
end
