#!/usr/bin/env ruby
require 'sinatra/base'

class MyApp < Sinatra::Base
  get '/' do
    "Hello world\n"
  end
end
