def find_user_by_id(id)
    db_query('select * from users where id = $1;', [id])[0]
  end


def create_users(name, dob, origin, email, password)
    
    password_digest = BCrypt::Password.create(password) 
  
    sql =  'insert into users 
        (name, dob, origin, email, password_digest)
        values 
        ($1, $2, $3, $4, $5);'
  
    db_query(sql , [name, dob, origin, email, password_digest])
end



def logged_in?()
    if session[:user_id]
      return true
    else
      return false
    end
  end
  
  

  def login_user(email)
    sql = "select * from users where email = $1;"
    db_query(sql, [email])
  end
  



  def current_user(id)
    sql = "select * from users where id = $1;"
    user = db_query(sql).first
    return OpenStruct.new(user)
  end
