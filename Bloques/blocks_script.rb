# Figura 5
#
# 10.times do |number|
#   puts "5 x #{number + 1} = #{(number + 1)* 5 }"
# end
#
# Figura 6
#
# print_table = Proc.new do |number|
#   puts  "5 x #{number + 1} = #{(number + 1)*5}"
# end
# 10.times &print_table
#
# Figura 7
#
# full_name = Proc.new do |first,last|
#   puts "#{last},#{first}"
# end
# full_name.call('Jesus',' Mata Otero')
#
# Figura 8
#
# full_name = Proc.new do |first: name, last: surname|
#   puts "#{last},#{first}"
# end
#
# full_name.call(first:'Jesus',last:'Mata')
# full_name.call(last:'Mata',first:'Jesus')
#
# Figura 9
#
# def load_users(database, &block)
#   puts database
#   puts block.class
#   puts block.source_location
#   puts block.parameters
#   block.call(first: 'Jesus',last: 'Mata')
# end
#
# load_users('users.sqlite3', &full_name)
#
# Figura 10
#
# users = ['Maria', 'Ramon', 'Victor', 'Juan']
#
# def last_user(users)
#   yield(users.last.downcase) if block_given?
#   users.last
# end
# last_user(users) do |user|
#   puts "El ultimo usuario es: #{user}"
# end
# puts last_user(users)
#
# Figura 11
#
# full_name = Proc.new do |first: 'Maria', last: 'Sanchez', **list|
#   puts "#{last},#{first}: #{list}"
# end
#
# full_name.call(first: 'Ramon',last: 'Ayala',birth: 1982,male: true)
# full_name.call(birth: 1990,female: true)
#
# Figura 12
#
# full_name = lambda do |first: 'Maria', last: 'Sanchez', **list|
#   puts "#{last},#{first}: #{list}"
# end
# full_name.call(first: 'Ramon',last: 'Ayala', birth: 1982,male: true)
# full_name.call(birth: 1990, female:true)
#
# Figura 13
#
# block_proc = proc do |a,b|
#   [a,b]
# end
#
# block_lambda = lambda do |a,b|
#   [a,b]
# end
#
# p block_proc.call('A',true,2)
# p block_proc.call('A')
# p block_proc.call(['A',false])
# p block_proc.lambda?
# p block_lambda.lambda?
