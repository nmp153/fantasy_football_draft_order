#Quick fantasy football draft program I wrote up to help with my league's draft order!

puts "Enter the names of your who is in the league: "
names = gets.chomp

array_of_names = names.gsub(',','').split

number_of_names = array_of_names.length

num = (1..number_of_names).to_a.shuffle


def draft_line_up(array_of_names,num)
  num.zip(array_of_names).sort.each do |num, names|
    puts "#{names}: draft positon => #{num}"
  end
end

draft_line_up(array_of_names,num)
