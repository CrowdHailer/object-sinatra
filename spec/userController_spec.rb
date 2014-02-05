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
		expect(last_response).to be_ok
		expect(last_response.body).to eq("Work in progress mike")
	end

	it 'should search for users' do
		expect(User).to receive(:find).with 2
		get '/users/2'
	end
end