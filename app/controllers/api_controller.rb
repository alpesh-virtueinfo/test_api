class ApiController < ApplicationController
  def index
    
    api_key = 'SEM39D230F2B0D36B867DD82435A934F6C6D'
    api_secret = 'ZTE5M2RkM2JkMmNkMzEyZmUyNDVmMzg5ZDVhOTU1YWY'
    sem3 = Semantics3::Products.new(api_key, api_secret)
    sem3.products_field( "brand", "electronics" )
    
    @productsHash = sem3.get_products()
    @productsHash = @productsHash['results']
  end
end
