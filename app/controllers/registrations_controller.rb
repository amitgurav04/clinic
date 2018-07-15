class RegistrationsController < Devise::RegistrationsController

private

  def sign_up_params
      properties_keys = params[:user][:registration_consents].nil? {} || params[:user][:registration_consents].keys
      params.require(:user).permit( :name,
                                  :date_of_birth,
                                  :gender,
                                  :mobile_number,
                                  :email,
                                  :password,
                                  :password_confirmation, registration_consents: properties_keys)
  end

  def account_update_params
    params.require(:user).permit( :name,
                                  :date_of_birth,
                                  :gender,
                                  :mobile_number,
                                  :email,
                                  :password,
                                  :password_confirmation,
                                  :current_password)
  end

end
