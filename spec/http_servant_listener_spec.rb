require 'rspec'
require 'rspec/expectations'
require_relative '../lib/http_servant/listener.rb'

RSpec::Matchers.define :open_a_socket do |port|
	match do |actual|
		actual.call
		TCPSocket.open('localhost', port)
	end

	def supports_block_expectations?
		true
	end
end

describe HttpServant::Listener do
	it "should listen on port 2000" do
		expect do	
			HttpServant::Listener.listen()
		end.to open_a_socket(2000)
	end
end
