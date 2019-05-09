class ApplicationController < ActionController::Base
    before_action :set_variables

    def set_variables
    @user_count = User.all.count
    @product_count = Product.all.count
    @store_count = Store.all.count
    end
end
