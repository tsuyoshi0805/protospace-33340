class PrototypesController < ApplicationController
  before_action :authenticate_user!
  def index
    @prototypes = Prototype.all
  end

    def new
      @prototype = Prototype.new
    end
  
    def create
      @prototype = Prototype.new(prototypes_params)
      
        if @prototype.save
          redirect_to root_path
        else   
          render :new
        end
    end
    def show
      @prototype = Prototype.find(params[:id])
    end

    def edit
      @prototype = Prototype.find(params[:id])
    end

    def update
      @prototype = Prototype.find(params[:id])
      @prototype.update(prototypes_params)
      if @prototype.save
        redirect_to prototype_path
      else
        render :edit
      end

    end

    def destroy
    
    end



    private
    def prototypes_params
      params.require(:prototype).permit(:title, :catch_copy, :concept, :image, :update).merge(user_id: current_user.id)
    end 
    def move_to_index
      unless user_signed_in?
        redirect_to action: :index
      end
    end
    

  end