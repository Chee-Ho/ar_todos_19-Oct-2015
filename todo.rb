require_relative 'config/application'
require_relative 'app/controllers/controller'

# puts "Put your application code in #{File.expand_path(__FILE__)}"

#list out all tasks
#add tasks
#delete tasks
#completeness (mark it as X done)

command = ARGV[0]
todo = ARGV[1..-1].join(" ")

begin
	case command
	when 'list'
		Controller.list
	when 'add'
		Controller.add(todo)
	when 'delete'
		Controller.delete(todo)
	when 'complete'
		Controller.complete(todo)
	end
end