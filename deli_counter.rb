# Write your code here.
katz_deli = [{name:"job"},{name:"Shee"}]
def line(people)
    lineP=[]
    if people.length==0
        "The line is currently empty."
    elsif people.length>0
        people.each{
            |person|
            lineP.push(person[:name])
        }
        newP=lineP.map.with_index{
            |name,index|
            "#{index+1}. #{name}"
        }
        
        "The line is currently: #{newP.join(" ")}"
    end
end
p line(katz_deli)


def take_a_number(current,name)
    puts "Welcome, #{name}. You are number #{current.length+1} in line."
    katz_deli.push({name:name})
end
take_a_number(katz_deli,"chris")

def now_serving(serve)
    unless serve.length=0
        puts "There is nobody waiting to be served!"
    else
        serve.map{
            |item|
            puts "Currently serving #{item[:name]}."
            serve.shift()
        }
    end
end

now_serving(katz_deli)