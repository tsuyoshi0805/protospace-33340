class PrototypesController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :destroy, :update, :new]
  before_action :move_to_index, except: [:index, :show, :update, :new, :create, :edit, :destroy] 
  


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
      @comment = Comment.new
      @comments = @prototype.comments.includes(:user)
    
    end

    def edit
      @prototype = Prototype.find(params[:id])
      unless @prototype.user.name == current_user.name
        redirect_to root_path
      end
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
      @prototype = Prototype.find(params[:id])
      if @prototype.destroy
         redirect_to root_path
      end
      
    end

    


    private
    def prototypes_params
      params.require(:prototype).permit(:title, :catch_copy, :concept, :image).merge(user_id: current_user.id)
    end 
   
    def move_to_index
      unless user_signed_in? == current_user.name
        redirect_to root_path
      end
    end

  end