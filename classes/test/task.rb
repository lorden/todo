require 'test/unit'
require 'task'
class TestTask < Test::Unit::TestCase
	def test_initialize
		task = Task.new('Wash dishes','House','30 min','Use a lot of soap')
		assert_equal task.name,'Wash dishes'
		assert_equal task.category,'House'
	end
end
