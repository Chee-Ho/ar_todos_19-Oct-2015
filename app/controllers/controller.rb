class Controller
	def self.list
		tasks = Task.all
		TaskViews.show(tasks)
	end

	def self.add(todo)
		Task.create(description: todo)
		puts "Appended" + " " + "'#{todo}'" + " " + "to your TODO list..."
	end

	def self.delete(todo)
		if Task.exists?(todo)
		  task = Task.find(todo)
		  description = task.description
		  task.delete
		  puts "Deleted" + " " + "'#{description}'" + " " + "from your TODO list..."
		else
		  puts "Bad luck... There's not such item in the database."
		end
	end

	def self.complete(todo)
		task = Task.find(todo)
		description = task.description
		  if description.chars.first == "["
			puts "Item has already been marked completed"
		  else
		    task.description = "[X]" + task.description
		    task.save
		    puts "Item" + " " + "'#{description}'" + " " + "is marked with" + " "+ "[X]"+ " "+ "that denotes completion"
		  end
	end
end