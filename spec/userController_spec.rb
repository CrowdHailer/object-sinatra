ENV['RACK_ENV'] = 'test'

require './lib/usersController'
require 'rack/test'

describe UsersController do
	include Rack::Test::Methods
	def app
		UsersController
	end

	it 'should identify as users page' do
		get '/users'
		puts last_response
		expect(last_response).to be_ok
		expect(last_response.body).to eq("e")
	end

	
end