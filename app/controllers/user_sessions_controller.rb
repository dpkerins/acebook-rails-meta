class UserSessionsController < ApplicationController
  def new
    @user_session = UserSession.new
  end

  def create
    @user_session = UserSession.new(user_session_params.to_h)
    # if @user_session.save
    #   redirect_to root_path
    # else
    #   render :action => :new
    # end
    respond_to do |format|
      if @user_session.save
        format.html { redirect_to root_url, notice: "Log in successful" }
        format.js
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
        format.js { render :create_error, status: :unprocessable_entity  }
      end
    end
  end

  def destroy
    current_user_session.destroy
    redirect_to root_path
  end

  private

  def user_session_params
    params.require(:user_session).permit(:email, :password, :remember_me)
  end
end