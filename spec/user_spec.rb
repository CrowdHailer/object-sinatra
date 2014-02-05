require './lib/user'

describe User do
	it 'should be possible to find a user by id' do
		expect(User.find(3)).not_to be_nil
	end

	it 'should return nil if there is no user' do
		expect(User.find(-1)).to be_nil
	end
end