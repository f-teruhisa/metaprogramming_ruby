require 'active_record'
ActiveRecord::Base.establish_connection :adapter => "sqlite3", :database => "dbfile"

ActiveRecord::Base.connection.create_table :tasks do |t|
	t.string :description
	t.boolean :completed
end

my_query = "tasks.*, (description like '%garage%') as heavy_job"
task = Task.find(:first, :select => my_query)
task.heavy_job?