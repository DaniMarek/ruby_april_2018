class OutputsController < ApplicationController
	def index
	# have the 'say' controller's index method handle the response; have it render a text that says 'What do you want me to say???'
		render text: "what do you want me to say???"
	end

	def hi
	# have it display a simple text that says 'Hello CodingDojo!'
		render text: "Hello CodingDojo!"
	end
	
	def sayhi
	# have it display a simple text that says 'Saying Hello!'
		render text: "Saying Hello!"
	end
	
	def hijoe
	# have it display a simple text that says 'Saying Hello Joe!'
		render text: "Saying Hello Joe!"
	end
	
	def himichelle
	# have it redirect to a url of 'say/hello/joe'
		redirect_to "/say/hello/joe"
	end
	
	def count
	# have it tell you how many times you've visited that page. When you first visit that url, it should say 'You visited this url 1 time'. Keep reloading the page to make sure the number goes up.
		session[:count] ||=0
		# stores number of sessions in count. First session is set to 0

		render text: "You have visited this url #{session[:count] +=1 } time(s)"
		# adds 1 to stored session in count
	end
	
	def reset
	# have it reset the session and display a text that says 'Destroyed the session!'.
		reset_session
		render text: "Destroyed the session!"
	end
end
