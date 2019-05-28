# README file for Sinatra app

The app is very simple.

```ruby
require 'sinatra'
require 'json'

post '/payload' do
  push = JSON.parse(request.body.read)
  puts "I got some JSON: #{push.inspect}"
  output = system('cd ~/git/CodeProjects/ && git pull && cd ~/git/clone/ && git pull')
  puts "output is #{output}"
end
```

This app listens for a ```POST``` request on ```/payload``` and gets the ```JSON``` attached to the request.
Operations can be done on the ```JSON``` as well.
This code checks whether a request is made and executes ```git pull``` in required repositories in a sub-system.
(here the repos are **CodeProjects**, a private repo, and its clone)
When successfull outputs 'yes'.
