class Calculator
	def initialize(x,y)
		@x = x.to_f
		@y = y.to_f
	end

	def addition
		@x + @y
	end

	def division
		@x / @y
	end
end