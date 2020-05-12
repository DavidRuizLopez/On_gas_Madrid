class PagesController < ApplicationController
  def home
    @locations = Location.geocoded #returns flats with coordinates

    @markers = @locations.map do |location|
      {
        lat: location.latitude,
        lng: location.longitude
      }
    end
  end

  def contactos
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params.require(:contact).permit(:email, :message))

    if @contact.save
      ContactsMailer.general_message(@contact).deliver
      render :thanks
    else
      render :new
    end
  end
end
