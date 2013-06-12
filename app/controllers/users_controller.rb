class UsersController < ApplicationController

    before_filter :require_login
    before_filter :find_user, :except => [ :index, :create, :new ]

    autocomplete :center, :name, :full => true

    
   def index
        if params[:registro] == nil or params[:registro] <= '0' then 
            params[:registro] = 2 
        end
        @users = User.search(params[:buscar]).page(params[:page]).per_page(params[:registro].to_i)
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(params[:user])
        render :action => :new unless @user.save
    end
    
    def show
        @user = User.find(params[:id])
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
          @user = User.find(params[:id])
          render :action => :edit unless @user.update_attributes(params[:user])
    end
    
    def activate
        if @user = User.load_from_activation_token(params[:id])
          @user.activate!
          redirect_to(login_path, :notice => 'Usuario Activado.')
        else
          not_authenticated
        end
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
    end
    
    private

  def find_user
      @user = User.find(params[:id]) if params[:id]
  end  

end
