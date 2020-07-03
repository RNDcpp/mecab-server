# frozen_string_literal: true

require 'sinatra'
NEOLOGD_PATH = ENV['NEOLOGD_PATH']
set :bind, '0.0.0.0'
set :environment, :production
set :port, 8000

get '/' do
  'hello'
end
