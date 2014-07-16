class HomeController < ApplicationController
  def index
  	@message = "RADVENTURE!"

    @rows = 10

    @columns = 10
    
  end
end
