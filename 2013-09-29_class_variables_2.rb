class MyClass

	def self.how_many_objects?
		@number_of_objects
	end
	def self.record_new_object
		@number_of_objects = (@number_of_objects||0).next
	end
	def initialize
		self.class.record_new_object #since it’s a class instance, ‘number_of_objects’ not accesible via the object instance initialize method.

	end
	def foo
	end
end
class BetterMyClass < MyClass
	def bar
	
	end
end

a = MyClass.new
b = BetterMyClass.new
p MyClass.how_many_objects? #=> 1
p BetterMyClass.how_many_objects? #=> 1
