require 'sinatra'
require './lib/user'

class UsersController < Sinatra::Base
	get '/users' do
		"Work in progress mike"
	end

	get '/users/:id' do |id|
		User.find(id.to_i)
	end
end