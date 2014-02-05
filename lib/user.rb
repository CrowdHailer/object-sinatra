class User
	DISCIPLES = [nil, "Wayne", "Zack", "Fantana", "Mazie"]

	def self.find (n=0)
		DISCIPLES[n] if n > 0
	end
end