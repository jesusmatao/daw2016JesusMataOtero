def save_new_user(name,email, birth_year)
db = SQLite3::Database.new('users.sqlite3')

  row=db.execute <<-SQL
    CREATE TABLE IF NOT EXISTS users(name varchar(255),
    email varchar(255),birth_year int);
  SQL

  db.execute 'INSERT INTO users(name,email,birth_year) values(?,?,?)' , [name,email,birth_year]
  users =db.execute 'Select * From users;'

  puts 'Nuevo usuario guardado.'
  users
 end