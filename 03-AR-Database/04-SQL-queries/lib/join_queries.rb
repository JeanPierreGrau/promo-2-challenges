SELECT Artist.Name FROM Artist

    JOIN Album ON Album.ArtistId == Artist.ArtistId
    JOIN Track ON Track.AlbumId == Album.AlbumId
    JOIN Genre ON Track.GenreId == Genre.GenreId

  WHERE Genre.name == "Rock"
  GROUP BY Artist.name
  ORDER BY TrackCount DESC
  LIMIT 0,5;