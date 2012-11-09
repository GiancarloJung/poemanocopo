class ContactController < ApplicationController

  def new
    @poema = Poema.new
  end

  def create
    @poema = Poema.new(params[:poema])
    
    if @poema.valid?
      NotificationsMailer.new_message(@poema).deliver
      redirect_to(root_path, :notice => "Poema emviado com sucesso.")
    else
      flash.now.alert = "Please fill all fields."
      render :new
    end
  end

end
