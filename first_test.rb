require 'minitest/autorun'

def nombre
	"Luis"
end

class TestNombre < MiniTest::Test
	def tes_nombre_returns_luis
		assert_equal "Luis", nombre
	end
end