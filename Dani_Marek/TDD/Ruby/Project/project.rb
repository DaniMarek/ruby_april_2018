# Assignment: Method Testing
# Previously, we showed how to test getter and setter for attributes in our class. In this assignment, you will be testing both attributes and public methods.
# In your Project class, do the following:
# - Add a new owner attribute and allow it to be set to a string upon initialization (eg. Project.new("Project 1", "description 1", "John Doe")
# - Add a new tasks attribute and initialize it to be empty array.
# - Add a tasks method that returns the tasks for each project
# - Add an add_tasks method that pushes a single tasks to the tasks attribute
# Advanced Challenge:
# - Add a new method called print_tasks that will print each task in your project

class Project
  attr_accessor :name, :description, :owner, :tasks
  def initialize name, description, owner
  	@name = name
  	@description = description
  	@owner = owner
 	  @tasks = []
  end

  def elevator_pitch
  	p "#{@name}, #{@description}"
  end

  def tasks
  	@tasks
  end

  def add_tasks task
  	@tasks << task
  end

  # def print_tasks
  # 	p @tasks
  # end

end

# project1 = Project.new("Project 1", "Description 1", "Dani Marek")
# puts project1.name # => "Project 1"
# project1.elevator_pitch  # => "Project 1, Description 1"
