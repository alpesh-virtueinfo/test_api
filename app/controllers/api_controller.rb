class ApiController < ApplicationController
  def index

    api_key = 'SEM315007E44B8C44DA8B8C0A569E108BEF9'
    api_secret = 'NzZiNjU5ZWU0MDY3Zjk0ZGEwNGIxNTI2ZWZmYzFiMWQ'
    sem3 = Semantics3::Products.new(api_key, api_secret)
    
    @product_name = params[:product_name]
    unless @product_name
      @product_name = 'electronics'
    end
    sem3.products_field( "brand", "#{@product_name}" )
    
    @productsHash = sem3.get_products()
    @productsHash = @productsHash['results']
  end

end
