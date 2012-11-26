class ContactController < ApplicationController

  def new
    @poema = Poema.new
  end

  def create
    @poema = Poema.new(params[:poema])
    
    if @poema.valid?
      NotificationsMailer.new_message(@poema).deliver
      redirect_to(root_path, :notice => "Poema enviado com sucesso.")
    else
      flash.now.alert = "Por favor, preencha todos os campos."
      render :new
    end
  end

end
