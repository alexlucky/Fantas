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

class Dog
  def initialize(breed,name)
    @breed = breed
    @name = name
  end

  def display
    puts "Ruff!I am of #{@breed} breed and my name is #{@name}"# seems we have to use double quote if there is any variable in this string
  end
end

dog = Dog.new('Labrador', 'Benzy')
dog.display

my_name = 'Xinfu'
my_age = 27
puts "Let %s talk about this" %my_name #embed string var in another string
puts "i am %d years old" %my_age

puts "."*20

print "how old are you"
#age = STDIN.gets.chomp()
#puts "You are #{age} years old"

first,second,third = ARGV
puts "The 3rd argument is #{third}"
#if fewer arguments than expected, the 3rd would be nil

config = "config.txt"
txt = File.open(config)
puts txt.read()   #get the text content

config2 = "config2.txt"
filein = File.open(config2,'w')
content = "files practice"
filein.write(content)
filein = File.open(config2)
puts filein.read()

txt.close()
filein.close()

def func(a,b)
  puts"adding #{a} + #{b}"
  return a+b,a*b # return values, can be multiple
end

num,sum = func(5,18)
puts "the num is #{num} and the sum is #{sum}"

#if ... elsif...else...end

count = [1,2,3,4,5]
fruits = ['apples','oranges','pears','apricots']
change = [1,'pennies',2,'dimes',3,'quarters']

for number in count
  puts "This is count #{number}"
end

fruits.each do |fruit|
  puts "A fruit of type:#{fruit}"
end

for i in change
  puts "I got #{i}"
end

elements = []

for i in(0..5)
  puts "Adding #{i} to the list."
  elements.push(i)
end

i = 0
numbers = []

while i<6
  puts "At the top i is #{i}"
  numbers.push(i)
  i=i+1
  puts "Numbers now: #{numbers}"
  puts "At the bottom i is #{i}"
end

ten_things = "Apples Oranges Crows Telephone Light Sugar"
puts "Wait there's not 10 things in that list, let's fix that"

stuff = ten_things.split(' ')#strings become an array after split
more_stuff = %w(Day Night Song Frisbee Corn Banana Girl Boy)#To simplify array initialization

while stuff.length != 10
  next_one = more_stuff.pop()
  puts "Adding: #{next_one}"
  stuff.push(next_one)
  puts "There's #{stuff.length} items now."
end

puts "there we go: #{stuff}"   #print the whole array

puts "Let's do some things with stuff"

puts stuff[1]
puts stuff[-1]   #access elements backwards

puts stuff.pop()
puts stuff.join(' ')
puts stuff.values_at(3,5).join('#')

states = {'Oregon'=>'OR','Florida'=>'FL','California'=>'CA',"New York"=>'NY','Michigan'=>'MI'}
cities = {'CA'=>'San Francisco','MI'=>'Detroit','FL'=>'Jacksonville'}   \

cities['NY']='New York'
cities['OR']='Portland'

puts '-'*20
puts 'NY State has: ',cities['NY']

for state, abbrev in states
  puts '%s is abbreviated %s' % [state, abbrev]
end

load 'mystuff.rb'
MyStuff.apple()

puts MyStuff::TANGERINE


