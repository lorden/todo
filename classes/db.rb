require 'mysql'
require 'yaml'

class Db
	attr_accessor :hostname, :username, :password, :database, :link
	
	def initialize()
		config = YAML.load_file("dbconfig.yaml")
		@hostname = config['hostname']
		@username = config['username']
		@password = config['password']
		@database = config['database']
		@link = Mysql.real_connect(@hostname, @username, @password, @database)
	end

	def get_db_time()
		query = 'SELECT CURDATE();'
		res = @link.query(query)
		return res.fetch_row
	end
end

