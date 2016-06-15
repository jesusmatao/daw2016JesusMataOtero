require 'rubygems'
require 'bundler/setup'

require 'awesome_print'
require 'pry'
require 'sqlite3'

require 'sqlite/sqlite_script'
require 'ap/permissions'
require 'pry/propina_script'

admin_personal_info = {'name'=>'Jesus', 'last_name'=>'Mata Otero','birth_year'=>1995}
admin_contact_info = {'email' => 'jesusmato1@gmail.com','mob'=>'4681153034'}
admin_role = Role.new('users','contacts','promotions')
admin = User.new(admin_personal_info,admin_contact_info,admin_role)

ap admin_personal_info
ap admin_contact_info
ap admin_role.permissions

ap admin_role.methods
ap admin_role.methods - Object.methods

puts tip(80)

save_new_user('Jesus Mata Otero','jesusmato1@gmail.com',1995)
users = save_new_user('Juan Mata Otero','juanmo@gmail.com',1990)

ap users