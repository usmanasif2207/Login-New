class UsersController < ApplicationController
    
    before_action :set_resource, only: [:create, :show, :edit, :update, :destroy]
  
    def index
      @users = User.order("id ASC").all
    end
  
    def create
      @user = user.new(params[:client])
      if @user.save
        redirect_to @user
      else
        # This line overrides the default rendering behavior, which
        # would have been to render the "create" view.
        render "new"
      end
    end
  
    def show;end
    
    def edit;end
    
    def update
      respond_to do |format|
        if @user.update(user_params)
          format.html { redirect_to users_path(@user.id), notice: "User was successfully updated." }
          format.json { render :show, status: :ok, location: @user }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @user.errors, status: :unprocessable_entity }
        end
      end
    end

    def destroy
      @user.destroy!
      respond_to do |format|
        format.html { redirect_to users_path, notice: "User was successfully destroyed." }
        format.json { head :no_content }
      end
    end
  
    private
  
    def set_resource
      @user = User.find params[:id]
    end
     # Only allow a list of trusted parameters through.
     def user_params
      params.require(:user).permit(:user_type, :name, :email, :password)
    end
end
