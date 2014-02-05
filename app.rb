require 'sinatra'
require './lib/usersController'

class HomeController < Sinatra::Base
	get '/' do
		"Work in progress Dave"
	end

	get '/users*' do
		UsersController.call(env)
	end
end