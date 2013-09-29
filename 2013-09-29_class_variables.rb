################
class MyClass
	@@number_of_objects = 0

	def self.how_many_objects?
		@@number_of_objects
	end
	def initialize
		@@number_of_objects = @@number_of_objects.next # 'number_of_objects' asscesible to object instances of the class. (i.e. initialize is an instance method..)
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
p MyClass.how_many_objects? #=> 2
p BetterMyClass.how_many_objects? #=> 2
