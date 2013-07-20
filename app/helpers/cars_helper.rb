module CarsHelper

	#humanizamos el valor boolean de used
  	def humanize_car_bool(value)
    	return "Usado" unless value
    	"Nuevo"
  	end

  	#humanizamos el valor boolean de video
  	def humanize_value_bool(value)
    	return "No" unless value
    	"Si"
  	end

end
