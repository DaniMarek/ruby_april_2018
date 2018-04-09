class TimesController < ApplicationController
	def main
		@time = Time.new

		# return render plain: 'index'
	end
end
