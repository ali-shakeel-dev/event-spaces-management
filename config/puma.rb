workers 1
threads 1, 3

app_dir = File.expand_path("../..", __FILE__)
directory app_dir
environment "production"
bind "unix://#{app_dir}/tmp/sockets/puma.sock"
stdout_redirect "#{app_dir}/log/puma.stdout.log", "#{app_dir}/log/puma.stderr.log", true
daemonize true
pidfile "#{app_dir}/tmp/pids/puma.pid"