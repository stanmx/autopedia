module CarsHelper

	#humanizamos el valor boolean de used
  	def humanize_car_bool(value)
    	return "Usado" unless value
    	"Nuevo"
  	end

end
