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

    end

    def update

    end

  
    private
    def prototypes_params
      params.require(:prototype).permit(:title, :catch_copy, :concept, :image).merge(user_id: current_user.id)
    end 
    def move_to_index
      unless user_signed_in?
        redirect_to action: :index
      end
    end
    

  end