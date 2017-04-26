class RegistrationsController < Devise::RegistrationsController

  private

    def sign_up_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
    end

    def account_update_params
      params.require(:user).permit(:first_name, :last_name, :avatar, :email, :age, :location_town, :about, :password, :password_confirmation, :current_password, interest_ids: [])
    end

end
