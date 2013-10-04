class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # make sure we can use the basket in the view as well as the controller
  
  helper_method :basket


  #becuase the basket is everywhere on the site
  #(e.g you want the basket on the product or orders page)
  # we put it here

  def basket

  	# if the user doesn't have a basket
  	# give them an empty one
  	if session[:basket].nil?

  		#basket is an empty list
  		#using set beacuse we don't want to add the same thing
  		session[:basket] = Set.new

  	end

  	# actually give them basket

  	session[:basket]

  end
  # to use it in the views
  helper_method :current_user

  def current_user
    if session[:user_id].present?
      User.find(session[:user_id])
    end
   end

end
