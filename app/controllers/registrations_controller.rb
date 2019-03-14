class RegistrationsCotroller < Devise::RegistrationsCotroller

private_methods
    
def sign_up_params
    params.require(:user).permit(:name, :username, :email, :password, :password_confirmation)
end

def saccount_update_params
    params.require(:user).permit(:name, :username, :email, :password, :password_confirmation, current_password)
end

end
