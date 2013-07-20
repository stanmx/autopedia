class PagesController < ApplicationController

	layout 'frontend'

	def inicio
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

	def auto
    	@car = Car.find(params[:id])

    	render :layout => "cars"
  	end

  	def directorio
  		@companies = Company.search(params[:search])
    	@json = Company.search(params[:search]).to_gmaps4rails
    	@categories = Category.includes(:companies).all

    	render :layout => "companies"
  	end

  	def negocio
  		@company = Company.find(params[:id])

  		render :layout => "companies"
  	end

  	def revista
  		@magazines = Magazine.all
  	end

  	def tv
  		@videos = Video.all.last
  	end

	def certificate
	end

	def contacto
	end

	def ubicacion
		render :layout => "location"
	end

end
