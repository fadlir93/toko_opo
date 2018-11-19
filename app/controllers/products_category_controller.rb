class ProductsCategoryController < ApplicationController
  skip_before_action :verify_authenticity_token

=begin
  memanggil method find_product_category_id sebelum memanggil 
  method destroy dan show
=end
  before_action :find_product_category_id, only: [:destroy, :show]

  def index
    # memasukkan semua data ke instance variabel @product_category 
    # dari model ProductCategory
    @product_category = ProductCategory.all()

    # conditional, jika ada data pada @product_category maka, data tampil dalam
    # bentuk json, jika tidak ada maka muncul pesan Product Category not found
    if @product_category.present?
      render json: { 
        status: "ok", 
        data: @product_category, 
        error: nil
      }, status: :ok
    else
      render json: {
        message: "Product Category not found"
      }, status: :unprocessable_entity
    end
    # end coditional
  end

  def show
    if @product_category.present?
      render json: { 
        status: "ok", 
        data: @product_category, 
        error: nil
      }, status: :ok
    else
      render json: {
        message: "Product Category not found"
      }, status: :unprocessable_entity
    end

  end

  def destroy
    if @product_category
      @product_category.destroy!
      render json: {
        message: "Delete Success"
      }, status: :ok
    else
      render json: {
        message: "Delete Failed"
      }, status: :unprocessable_entity
    end

  end

  def create
    create_product = ProductCategory.new(product_params)
    if create_product.save
      render json: {
        message: "Data Inserted"
      }, status: :created
    else
      render json: {
        message: "Insert data failed"
      }, status: :unprocessable_entity
    end

  end

  private
  def product_params
    params.require(:product_category).permit(:product_id, :category_id)
    # params.permit(:product_id, :category_id)

  end

  def find_product_category_id
    @product_category = ProductCategory.find_by(id: params[:id])
  end

end