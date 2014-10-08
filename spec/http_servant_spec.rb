require 'rspec'
require_relative '../lib/http_servant'

describe HttpServant do
	it 'should respond to :serve' do
		expect(HttpServant).to respond_to(:serve)
	end
end
