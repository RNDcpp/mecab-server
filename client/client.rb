# frozen_string_literal: true

require 'grpc'
require 'mecab_services_pb'

def sum(first, second)
  stub = Mecabgrpc::MecabService::Stub.new('mecab:8000', :this_channel_is_insecure)
  req = Mecabgrpc::InpNum.new(a: first, b: second)
  resp_obj = stub.sum(req)
  p resp_obj.result
end
sum(1, 3)
sum(2, 3)
sum(5, 5)
