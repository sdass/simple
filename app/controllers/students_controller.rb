class StudentsController < ApplicationController

  respond_to :json, :xml	
  def show
  	puts "StudentsController.show() method hits.....<<<<<"
  	@student = Student.find_by_id(params[:id])
  	record = self.instance_variable_get(:@student)
  	#record = instance_variable_get(:@student) works
  	

  	puts "----name=" + record.name + " age=" + record.age.to_s  + " creat_time=" + record.created_at.to_s + " ------"
  	#render template: 'students/show.rabl'
  end
end
