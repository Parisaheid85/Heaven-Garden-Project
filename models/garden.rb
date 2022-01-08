require 'pg'
require 'pry'

# create garden table
# raise db_query function
def db_query(sql, params = [])
    conn = PG.connect(dbname: 'heaven_garden')
    result = conn.exec_params(sql, params) 
    conn.close
    return result
  end



def create_garden( image_url, sunlight, fertilizer, moisture, comments, flowers, user_id)
    sql = "insert into mygarden ( image_url, sunlight, fertilizer, moisture, comments, flowers, user_id) values ($1, $2, $3, $4, $5, $6, $7);"
    db_query(sql, [image_url, sunlight, fertilizer, moisture, comments, flowers, user_id])
  
end

# read by user_id 
def find_garden_by_id(id)
    sql = "select * from mygarden where id = $1;"
    db_query(sql, [id])
end



def all_flowers_garden(user_id)
  sql = "select * from mygarden where user_id = $1;"
  
  db_query(sql, [user_id])
 
end

# edit/update
def update_garden(image_url, sunlight, fertilizer, moisture, comments, id )
    sql = 
      "update mygarden set 
       image_url = $1, 
      sunlight = $2, fertilizer = $3,
      moisture = $4, comments = $5, id = $6 where id = $6;"
    
    db_query(sql, [image_url, sunlight, fertilizer, moisture, comments, id])
end



def delete_garden(id)
    db_query("delete from mygarden where id = $1;", [id])
  end