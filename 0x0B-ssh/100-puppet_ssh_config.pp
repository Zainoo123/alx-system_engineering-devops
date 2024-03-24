# connect to a server Execute a command

exec { 'echo "PasswordAuthentication no\nIdentityFile ~/.ssh/school" >> /etc/ssh/ssh_config':
        path    => '/bin/'
}
# Seting up my client config file
#include stdlib
#file_line { 'Turn off passwd auth':
#  ensure => present,
#  path   => '/etc/ssh/ssh_config',
#  line   => '    PasswordAuthentication no',
#  replace => true,
#}

#file_line { 'Delare identity file':
#  ensure => present,
#  path   => '/etc/ssh/ssh_config',
#  line   => '     IdentityFile ~/.ssh/school',
#  replace => true,
#}
