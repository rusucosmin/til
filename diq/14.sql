DROP TABLE IF EXISTS user_song_log;
DROP TABLE IF EXISTS song_info;

CREATE TABLE user_song_log(
  user_id INTEGER,
  timestamp INTEGER,
  song_id INTEGER,
  artist_id INTEGER
);

CREATE TABLE song_info(
  song_id INTEGER,
  artist_id INTEGER,
  song_length INTEGER,
  PRIMARY KEY (song_id, artist_id)
);

ALTER TABLE user_song_log
   ADD CONSTRAINT FK_SONG_INFO
   FOREIGN KEY(song_id, artist_id)
   REFERENCES song_info(song_id, artist_id);

INSERT INTO song_info VALUES(
  1,
  1,
  3
);

INSERT INTO song_info VALUES(
  2,
  1,
  3
);

INSERT INTO song_info VALUES(
  3,
  1,
  3
);

INSERT INTO song_info VALUES(
  4,
  1,
  3
);

INSERT INTO user_song_log VALUES(
  1,
  1,
  1,
  1
);

INSERT INTO user_song_log VALUES(
  2,
  1,
  1,
  1
);

INSERT INTO user_song_log VALUES(
  3,
  1,
  1,
  1
);

INSERT INTO user_song_log VALUES(
  1,
  2,
  2,
  1
);

INSERT INTO user_song_log VALUES(
  1,
  3,
  3,
  1
);


SELECT * FROM song_info;
SELECT * FROM user_song_log;

SELECT user_id, song_length, song_info.song_id, song_info.artist_id
FROM user_song_log
JOIN song_info
ON user_song_log.song_id = song_info.song_id
    AND user_song_log.artist_id = song_info.artist_id;


SELECT daily.user_id, AVG(daily.total_length)
FROM(
    SELECT user_id as user_id, SUM(song_length) as total_length
    FROM user_song_log
    INNER JOIN song_info
    ON user_song_log.song_id = song_info.song_id
        AND user_song_log.artist_id = song_info.artist_id
    GROUP BY user_id, cast(to_timestamp(timestamp) as date)) daily
GROUP BY daily.user_id;
