# frozen_string_literal: true

require 'grpc'
require 'mecab_services_pb'

NEOLOGD_PATH = ENV['NEOLOGD_PATH']

# mecab grpc server
class MecabServer
  class << self
    def start
      @server = GRPC::RpcServer.new
      @server.add_http2_port('0.0.0.0:8000', :this_port_is_insecure)
      @server.handle(AppService)
      @server.run_till_terminated
    end
  end
end

# mecab service
class AppService < Mecabgrpc::MecabService::Service
  def sum(inp_num, _unused_call)
    Mecabgrpc::Total.new(result: inp_num.a + inp_num.b)
  end
end

MecabServer.start
