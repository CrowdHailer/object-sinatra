ENV['RACK_ENV'] = 'test'

require './app'
require 'rack/test'

describe HomeController do
	include Rack::Test::Methods
	def app
		HomeController
	end

	it 'should have a home message' do
		get '/'
		expect(last_response).to be_ok
	end

	it 'should call the users controller' do
		expect(UsersController).to receive(:call)
		get '/users'
	end

	it 'should call the users controller for fetching users' do
		expect(UsersController).to receive(:call)
		get '/users/2'
	end

end