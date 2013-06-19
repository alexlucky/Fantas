3.times{puts "Hello Ruby!"}  #Everything is object and has its functions.this shows how to execute a statement in loop


#variable test
#no need to give variable a type
# start with lower case or underscore->local var;start with $->global var;start with @->instance var;start with @@->class var, static one
# start with upper case->constant var
def sayHello(name)        #function definition
puts "Hi,#{name}"   #string var
end

sayHello("Lucky")     #function call

#class,module,object are class,kernel is module
#Kernel provides some system predefined functions,like static functions,eg,puts function
puts Kernel.class

#condition statements:1,if2,if else end 3,if..elseif..else..end 4, unless(if not) 5, case ..when
x=10
y=9
puts (x<=>y)

#loop statements:1, x.times 2,  while..end + & break & next 3,until..end 4, for in ..end

#yield

#class

class Person
  def initialize(age,sex)
    @age=age
    @sex=sex
  end
  def say    #function in class
    puts "Hello Ruby"
  end
end     #end of class definition

lucky=Person.new(22,"boy")   #get an instance with initialize function
lucky.say     #no parameter, no need for brackets
