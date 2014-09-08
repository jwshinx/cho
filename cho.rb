require "rubygems"
require "sinatra/base"

class Cho < Sinatra::Base

  get '/' do
    'Hello, nginx and unicorn!'
  end

  get '/weather' do
    'Weather Channel'
  end

  get '/history' do
    'History Channel'
  end
end
