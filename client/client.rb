# frozen_string_literal: true

require 'grpc'
require_relative 'protos/app_services_pb.rb'

def sum(first, second)
  stub = App::App::Stub.new('mecab:8000', :this_channel_is_insecure)
  req = App::InpNum.new(a: first, b: second)
  resp_obj = stub.sum(req)
  p resp_obj.result
end
sum(1, 3)
sum(2, 3)
sum(5, 5)
