module CompaniesHelper

	#humanizamos el valor boolean de used
  	def humanize_bool(value)
    	return "No Garantía" unless value
    	"Garantía"
  	end

end
