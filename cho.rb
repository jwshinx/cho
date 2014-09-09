require "rubygems"
require "sinatra/base"
require 'haml'
require 'oauth2'
require 'httparty'

class Cho < Sinatra::Base

  get '/' do
    my_token = ENV['DK_ACCESS_TOKEN']
    endpoint = ENV['DK_ENDPOINT']
    resp = HTTParty.get(endpoint + "?access_token=" + my_token)
    
    output = resp.code.to_s            + "<br /><br /><br />" \
      + resp.message.to_s              + "<br /><br /><br />" \
      + resp.headers.inspect           + "<br /><br /><br />" \
      + JSON.parse(resp.body).inspect  + "<br /><br /><br />"
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
    "single dot: #{params[:id]}"
  end
end
