require_relative 'project'
RSpec.describe Project do
	before(:each) do
	# before(:each) runs this block once before all examples are run. The code between do and end indicates a block.
		@project1 = Project.new('Project 1', 'description 1', 'Dani Marek')
		@project2 = Project.new('Project 2', 'description 2', 'Jackie Marek')
	end

	it 'has a getter and setter for name attribute' do
    	@project1.name = "Changed Name" # this line would fail if our class did not have a setter method
    	expect(@project1.name).to eq("Changed Name") # this line would fail if we did not have a getter or if it did not change the name successfully in the previous line.
	end 

# this is one of my examples. I want the example to fail initially, and then update the code to pass.
	it 'has a method elevator_pitch to explain name and description' do
		expect(@project1.elevator_pitch).to eq("Project 1, description 1")
		expect(@project2.elevator_pitch).to eq("Project 2, description 2")
	end
	
	
	# - Write a test for the owner attribute. It should have a getter and a setter.
	it 'should have a getter and setter' do
		expect(@project1.owner).to eq('Dani Marek')
	end

	# it'has a method tasks that returns tasks' do
	# 	expect(@project1.tasks.class == Array).to eq(true)
	# end
	
	# - Write a test for the tasks and add_tasks methods
	it 'should push added task to tasks' do
		@project1.add_tasks('Task1')
		expect(@project1.task.include? 'Task1').to eq([true])
	end
	# - Write a test for the print_tasks method


end
  


#   it 'has a method elevator_pitch to explain name and description' do
#   	expect(@project1.elevator_pitch).to eq("Project 1, description 1")
#   	expect(@project2.elevator_pitch).to eq("Project 2, description 2")
#   end

#   context 'methods for tasks' do
#   	before(:each) do
#   		1.upto(3) { |i| @project1.add_tasks("Task ##{i}") }
#   	end
# end
