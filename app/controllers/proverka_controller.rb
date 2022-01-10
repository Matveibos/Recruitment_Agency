class ProverkaController < ApplicationController
  before_action :set_user, only: %i(show edit update destroy)

  def index
    @user = User.all
  end

  def show
  end

  def edit
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to proverka_path, notice: "User was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to proverka_url, notice: "User was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def set_user
    @user = User.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def user_params
    params.require(:user).permit(:firstname, :email, :password, :password_confirmation, :lastname, :technical_level, :company_name, :status)
  end
end
