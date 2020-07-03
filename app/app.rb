# frozen_string_literal: true

require 'sinatra'
NEOLOGD_PATH = ENV['NEOLOGD_PATH']

get '/' do
  'hello'
end
