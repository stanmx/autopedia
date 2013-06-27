class PagesController < ApplicationController

	layout 'frontend'

	def home
	end

	def certification
	end

	def contact
	end

	def location
		render :layout => "location"
	end

end
