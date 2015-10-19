class TaskViews
	def self.show(tasks)
		tasks.each_with_index do |task,id|
			puts "#{task.id}: #{task.description}"
		end	
	end
end