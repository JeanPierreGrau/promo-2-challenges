require 'sqlite3'

# opens the database
<<<<<<< HEAD
DATABASE_PATH = "/Users/mac/code/JeanPierreGrau/promo-2-challenges/03-AR-Database/03-Interacting-with-code"
db = SQLite3::Database.new(DATABASE_PATH)
=======
database_path = File.join(File.dirname(__FILE__), 'db/jukebox.sqlite')
db = SQLite3::Database.new(database_path)
>>>>>>> 4e19570c513fcfc81103830342e7b47efb97fc04

def number_of_rows(db, table_name)
  #TODO: count number of rows in table table_name
  db.execute("SELECT COUNT(*) FROM @{table_name}").first.first
end

def sorted_artists(db)
  #TODO: return array of artists' names sorted alphabetically
<<<<<<< HEAD
  db.execute("SELECT * FROM Artist ORDER BY Name")
=======
>>>>>>> 4e19570c513fcfc81103830342e7b47efb97fc04
end

def love_tracks(db)
  #TODO: return array of love songs
  db.execute("SELECT * FROM Track WHERE Name LIKE '%love%'")
end


def long_tracks(db, min_length)
  #TODO: return tracks verifying: duration > min_length (minutes)
<<<<<<< HEAD
  db.execute("SELECT * FROM Track WHERE Milliseconds > (#{min_length} * 60000)")
end

p number_of_rows(db, "Artist")
p sorted_artists(db)
p love_tracks(db)
p long_tracks(db, 6)
=======
end
>>>>>>> 4e19570c513fcfc81103830342e7b47efb97fc04
