class ProductsCategoryController < ApplicationController

    def show
      products_category = ProductCategory.select
        if products_category.present?
          render json: products_category, status: :ok
        else
          render json: {
            message: "data not found"
          }, status: :unprocessable_entity
        end

    end

end
