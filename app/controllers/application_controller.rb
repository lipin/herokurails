class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def load_game(klass, id=nil)
  	ObjectSpace.each_object(klass).to_a.select {|obj| obj::__id__ == id.to_i}.first || klassy = klass.new
	end
	helper_method :load_game

end
