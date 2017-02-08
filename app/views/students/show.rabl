#<h1>Students#show</h1>
#<p>Find me in app/views/students/show.html.erb</p>

object @student

#declare the properties to include
attributes :name, :age, :hobby
#include a custom node with full detail
node :name do |student|
	[student.name, student.age, student.hobby].join(", ")
end

