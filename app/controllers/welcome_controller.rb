class WelcomeController < ApplicationController
  def index
  	
  end

  def seedata
  	puts "----------&&&& in seedata() &&&&&-------"
  	@user = { :name => "Bob", :age => 27, :year => 1976 }
  	@user = OpenStruct.new({ :name => "Bob", :age => 27, :year => 1976 }) # hash to object
  	puts :user
  end

end
