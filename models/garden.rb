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



def create_garden(name, image_url, sunlight, fertilizer, moisture, comments, user_id, flowers)
    sql = "insert into mygarden (name, image_url, sunlight, fertilizer, moisture, comments, flowers, user_id) values ($1, $2, $3, $4, $5, $6, $7, $8);"
    db_query(sql, [name, image_url, sunlight, fertilizer, moisture, comments, user_id, flowers])
  
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
def update_garden(name, image_url, sunlight, fertilizer, moisture, comments, id, flowers)
    sql = 
      "update mygarden set 
      name = $1, image_url = $2, 
      sunlight = $3, fertilizer = $4,
      moisture = $5, comments = $6, flowers = $7, where id = $8;"
    
    db_query(sql, [name, image_url, sunlight, fertilizer, moisture, comments, id, flowers])
end

def delete_garden(id)
    db_query("delete from mygarden where id = $1;", [id])
  end