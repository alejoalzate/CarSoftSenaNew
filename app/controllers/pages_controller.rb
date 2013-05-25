class PagesController < ApplicationController
  def home
      @title = "Home"
  end

  def token
  end

  def contact
      @title = "Contact"
  end

  def about
      @title = "About"
  end

  def admin
      @title = "Administracion"
  end

    def admin
      @title = "Configuracion"
  end

end
