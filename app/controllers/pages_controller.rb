class PagesController < ApplicationController

	layout 'frontend'

	def home
		@videos = Video.all.last
	end

	def autos_en_venta
		@cars = Car.search(params[:search]).year(params[:fyear],params[:tyear]).price(params[:fprice],params[:tprice]).location(params[:fstate],params[:tcity])
    	@brands = Brand.joins(:models => :cars).all
    	@models = Model.joins(:cars).all
    	@status = Car.select('DISTINCT status')
    	@location = State.joins(:cities => :cars).all

    	render :layout => "cars"
	end

	def certification
	end

	def contact
	end

	def location
		render :layout => "location"
	end

end
