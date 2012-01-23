class Task
	attr_accessor :name, :estimated, :spent, :date, :completed, :comments, :category

	def initialize(name,category,estimated,comments)
		@name = name
		@category = category
		@estimated = estimated
		@comments = comments
	end

end
