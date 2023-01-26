# Write your code here.
require 'pry'

def line(katz_deli)
    if katz_deli.length == 0
        puts "The line is currently empty."
    else
        line_people = katz_deli.map.each_with_index do |name, number|
            "#{number+1}. #{name}"
        end
        h = line_people.join(" ")
        puts "The line is currently: #{h}"
    end
end

def take_a_number(katz_deli, name)
    katz_deli << name
    puts "Welcome, #{name}. You are number #{katz_deli.length} in line."
end

def now_serving(katz_deli)
    if katz_deli.length == 0
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{katz_deli[0]}."
        katz_deli.shift
    end
end
binding.pry