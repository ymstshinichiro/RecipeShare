set :branch, 'master'

role :app, %w{root@153.126.215.84}
role :web, %w{root@153.126.215.84}
role :db,  %w{root@153.126.215.84}

server '153.126.215.84', user: 'root', roles: %w{web app db}

#set :ssh_options, {
#   keys: [File.expand_path('~/.ssh/pays/id_rsa')],
#   forward_agent: true,
#   auth_methods: %w(publickey)
#}
