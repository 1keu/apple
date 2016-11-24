class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
 before_action :authenticate_product!
  before_action :correct_product, only: [:edit, :update]
  # GET /products
  # GET /products.json
  def index
    @products = Product.all
  end

  # GET /products/1
  # GET /products/1.json
  def show
    @notes = @product.notes
  end

  # GET /products/new

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.jso

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
 #file = params[:product][:image]
   # @product.set_image(file)

    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: '貴様の情報は、無事に更新された。' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :email,:image, :image_cache, :remove_image)
    end
      def correct_product
      product = Product.find(params[:id])
      if !current_product?(product)
        redirect_to root_path, alert: '許可されていないページです'
      end
    end
    
end
