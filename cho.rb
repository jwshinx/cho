require "rubygems"
require "sinatra/base"
require 'haml'

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

  get '/dots' do
    #haml :index, :layout => :dot
    @color = 'orange'
    haml '%div= @color'
  end

  get '/dots/:id' do

  end
end

