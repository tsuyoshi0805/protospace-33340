class PrototypesController < ApplicationController
  before_action :authenticate_user!
  def index
  end

    def new
      @prototypes = prototypes.new
    end
  
    def create
      prototypes.create(prototypes_params)
    end
  
    private
    def prototypes_params
      params.require(:prototypes).permit(:name, :image, :text)
    end 
end
