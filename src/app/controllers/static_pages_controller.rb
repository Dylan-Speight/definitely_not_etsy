class StaticPagesController < ApplicationController
    def home
        @products = Product.last(10)
    end
end
