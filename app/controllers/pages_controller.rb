class PagesController < ApplicationController

	layout 'frontend'

	def certification
	end

	def contact
	end

	def location
		render :layout => "location"
	end

end
