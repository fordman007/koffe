class BasketsController < ApplicationController

	def create
		#add this product to the basket
		# :product_id becuase we're in a nested resource
		# so not :id beacuse we're not talking about basket
		@product = Product.find(params[:product_id])


		#lets add this product id to the basket
		basket.add(@product.id)


		#let tell a user
		flash[:success] = "item added to basket"

		#go back to the product show page
		redirect_to product_path(@product)
    end


def destroy
	# remove this product from the basket
	@product = Product.find(params[:product_id])

	basket.delete(@product.id)

	#let tell a user
	flash[:success] = "item removed from basket"

	#go back to the product show page
	redirect_to product_path(@product)
end

end