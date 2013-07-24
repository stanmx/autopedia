class PagesController < ApplicationController

  layout 'frontend'
 
  def inicio
    @videos = Video.all.last
    @newsletter = Newsletter.new
  end

  def inicio_send
    @newsletter = Newsletter.new(params[:newsletter])
    
    if @newsletter.valid?
      NotificationsMailer.new_newsletter(@newsletter).deliver
      redirect_to(page_path("inicio"), :notice => "Su correo ha sido agregado a nuestra lista. Gracias!")
    else
      redirect_to(page_path("inicio"), :notice => "Favor de introducir un correo valido.")
    end
  end

  def autos_en_venta
    @cars = Car.search(params[:search]).year(params[:fyear],params[:tyear]).price(params[:fprice],params[:tprice]).location(params[:fstate],params[:tcity])
    @brands = Brand.joins(:models => :cars).group(:title)
    @models = Model.joins(:cars).group(:title)
    @status = Car.select('DISTINCT status')
    @location = State.joins(:cities => :cars).all

    @newsletter = Newsletter.new

    render :layout => "cars"
  end

   def autos_en_venta_send
    @newsletter = Newsletter.new(params[:newsletter])
    
    if @newsletter.valid?
      NotificationsMailer.new_newsletter(@newsletter).deliver
      redirect_to(page_path("autos_en_venta"), :notice => "Su correo ha sido agregado a nuestra lista. Gracias!")
    else
      redirect_to(page_path("autos_en_venta"), :notice => "Favor de introducir un correo valido.")
    end
  end

  def auto
    @car = Car.find(params[:id])
  	@cars = Car.joins(:model => :brand).where('models.title LIKE ?', @car.model.title)

    @newsletter = Newsletter.new

  	render :layout => "cars"
  end

  def auto_send
    @car = Car.find(params[:id])
    @newsletter = Newsletter.new(params[:newsletter])
    
    if @newsletter.valid?
      NotificationsMailer.new_newsletter(@newsletter).deliver
      redirect_to(page_path("autos_en_venta/#{@car.id}"), :notice => "Su correo ha sido agregado a nuestra lista. Gracias!")
    else
      redirect_to(page_path("autos_en_venta/#{@car.id}"), :notice => "Favor de introducir un correo valido.")
    end
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
    @video = Video.all.last
    @videos = Video.all
  end

  def episodio
    @video = Video.find(params[:id])
    @videos = Video.last(4)
  end

  def poliza_de_legalidad
  end 
  
  def acerca_de_nosotros
  end  

  def certificate
    @certification = Certification.new
  end

  def certification_send
    @certification = Certification.new(params[:certification])
    
    if @certification.valid?
      NotificationsMailer.new_certification(@certification).deliver
      redirect_to(page_path("certificate"), :notice => "Su correo ha sido agregado a la lista de notificación. Gracias!")
    else
      redirect_to(page_path("certificate"), :notice => "Favor de introducir un correo valido.")
    end
  end

  def contacto
    @message = Message.new
  end

  def create
    @message = Message.new(params[:message])
    
    if @message.valid?
      NotificationsMailer.new_message(@message).deliver
      redirect_to(page_path("contacto"), :notice => "El mensaje ha sido enviado exitosamente.")
    else
      redirect_to(page_path("contacto"), :notice => "Favor de llenar los campos requeridos")
    end
  end

  def ubicacion
    render :layout => "location"
  end

  def publicidad
  end  

end
