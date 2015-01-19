
# exe 1
puts "\n======================= exe 1 ======================="
puts "Hello"
puts "It is now #{Time.now}"
puts "the index is:" , " sadasd".index("a")
puts  "the rindex is:" ,"sadasd".rindex("a")

# exe 2
puts "\n======================= exe 2 ======================="
def say_goodnight(name)
  # result = "Good night, #{name2.capitalize}"
  result = "Good night, " + name.capitalize
  # result = "Good night, " +  name2
  # return result
end

# Time for bed...
puts say_goodnight("john-Boy")
puts say_goodnight("mary-Ellen")

# exe 3 Function
puts "\n======================= exe 3 ======================="
def my_sum(n1,n2)
  result = "the sum is:" + (n1+n2).to_s
  puts  result
end

my_sum(1,2)

# exe 4 Array
puts "\n======================= exe 4 ======================="
arr = [1,"cats",3.14]
puts "the array is (to_s): " + arr.to_s
puts "the array is (inspect): " + arr.inspect
puts "the first element is: " + arr[0].to_s
puts "the second element is: " + arr[1]
puts "the third element is: " + arr[2].to_s

str_arr = %w{this is a pure string array}
puts "the first element is: " + str_arr[0]
str_arr2 = %w(this is a pure string array)
puts "the first element is: " + str_arr2[0]

# exe 5 puts vs p
puts "\n======================= exe 5 ======================="
puts "\nputs strArr.inspect"
puts str_arr.inspect

puts "\nputs strArr.to_s"
puts str_arr.to_s

puts "\nputs strArr"
puts str_arr

puts "\np strArr.inspect"
p str_arr.inspect
puts "\np strArr.to_s"
p str_arr.to_s
puts "\np strArr"
p str_arr

def a

end

puts "\nputs a"
puts a

puts "\np a"
p a

p 1,2,3
puts 1,2,3

# exe 6 HashTable
puts "\n======================= exe 6 ======================="

hash_table = {
    :key1 => 'value1',
    :key2 => 'value2'
}

puts hash_table[:key1]
p hash_table[:key1]
puts hash_table[:key3]
p hash_table[:key3]

hash_table2 = {
    key1: 'value1',
    key2: 'value2'
}

puts hash_table2[:key1]
puts "the value is:  #{hash_table2[:key1]}"
p "the value is:  #{hash_table2[:key1]}"
p hash_table2[:key1]
puts hash_table2[:key3]
p hash_table2[:key3]

# exe 7 code blocks
puts "\n======================= exe 7 ======================="
def greet(name)
  puts "Hi, " + name
  yield
  yield
end

greet('Tracy') do puts 'Welcome to the Ruby world' end
greet('Bob') { puts 'Welcome to the ruby world'}

def greet2(name2)
  puts "Hi, "
  yield(name2,'p2')
  yield(name2,'p4')
end

greet2('Tracy') {|param1,param2| puts "this is the param of the block #{param1} and #{param2} "}

#example of using block
[ 'cat', 'dog', 'horse' ].each {|name| print name, " " }
5.times { print "*" }
3.upto(6) {|a| print a }
('a'..'e').each {|c| print c }

puts
puts "You have totally #{ARGV.size} paramters"

require_relative 'book_in_stock'

# exe 8 Class
puts "\n======================= exe 8 ======================="
a_book = BookInStock.new("isbn1",23)
puts a_book
p a_book
puts "isbn is: #{a_book.isbn}"
puts "price is: #{a_book.price}"
a_book.price = a_book.price*0.75
puts "new price is: #{a_book.price}"

# exe 9 Variables
puts "\n======================= exe 9 ======================="
person = "Tracy"
puts "The object in 'person' is a #{person.class}"
puts "The object has an id of #{person.object_id}"
puts "and a value of '#{person}'"

# exe 10 Variables
puts "\n======================= exe 10 ======================="
person1 = "Tim"
person2 = person1
person1[0] = 'J'
puts "person1 is #{person1}"
puts "person2 is #{person2}"

person1 = "Tim"
person2 = person1.dup
person1[0] = "J"
puts "\nperson1 is #{person1}"
puts "person2 is #{person2}"

person1 = "Tim"
person2 = person1
# person1.freeze # prevent modifications to the object
person2[0] = "J"
