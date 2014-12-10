class HomeController < ApplicationController
  def index
    @suppliers = User.where(role: "Supplier")
    @random_supplier = @suppliers.sample(3)

  end

  
end
