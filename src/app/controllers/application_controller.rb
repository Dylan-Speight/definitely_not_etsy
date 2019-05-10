class ApplicationController < ActionController::Base
    before_action :set_variables
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    def set_variables
    @user_count = User.all.count
    @product_count = Product.all.count
    @store_count = Store.all.count
    end

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :address])
    end

end
