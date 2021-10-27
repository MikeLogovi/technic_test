class WelcomeController < ApplicationController
  def index
      puts I18n.locale
      if not I18n.locale
         
         redirect_to '/fr'
      end
  end
end
