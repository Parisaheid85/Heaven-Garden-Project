require 'pg'
require 'bcrypt'




email = "parisaheid85@gmail.com"
password = "garden"

conn = PG.connect(dbname: 'heaven_garden')
password_digest = BCrypt::Password.create(password)
sql = "insert into users (email, password_digest) values ('#{email}', '#{password_digest}');"

conn.exec(sql)
conn.close