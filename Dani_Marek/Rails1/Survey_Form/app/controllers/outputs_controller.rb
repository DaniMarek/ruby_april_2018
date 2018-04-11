class OutputsController < ApplicationController
	def main
		session[:views] ||= 0
		render "outputs/main"
	end

	def survey
		session[:views] = session[:views] + 1
		# this part isn't working
		session[:results] = params

		flash[:success] = "Thanks for submitting this form! You have submitted this form #{session[:views]} times now!"
		# session[:results]
		redirect_to "/results"
	end

	def results
		@results = session[:results]
		p @results, "references"
	end
end
