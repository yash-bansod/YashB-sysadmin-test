require 'sinatra'
require 'json'

post '/payload' do
  push = JSON.parse(request.body.read)
  puts "I got some JSON: #{push.inspect}"
  output = system('cd ~/git/CodeProjects/ && git pull && cd ~/git/clone/ && git pull')
  puts "output is #{output}"
end

