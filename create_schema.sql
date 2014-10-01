CREATE TABLE IF NOT EXISTS tblUsers (
  id SERIAL PRIMARY KEY,
  userid varchar(30)
);

INSERT INTO tblUsers (userid) values ('system');  -- 1

CREATE TABLE IF NOT EXISTS tblGifs (
  id SERIAL PRIMARY KEY,
  gif_url varchar(300) NOT NULL,
  id_user INT REFERENCES tblUsers(id),
  date_added DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS tblTags (
  id SERIAL PRIMARY KEY,
  tag varchar(30)
);

CREATE TABLE IF NOT EXISTS jGifsAndTags (
  id SERIAL PRIMARY KEY,
  id_gif INT REFERENCES tblGifs(id) NOT NULL,
  id_tag INT REFERENCES tblTags(id) NOT NULL,
  date_added DATE NOT NULL
);

CREATE VIEW vwGifsAndTags as
SELECT t.tag, g.gif_url
FROM tblTags t
INNER JOIN jGifsAndTags j on t.id = j.id_tag
INNER JOIN tblGifs g on j.id_gif = g.id;

INSERT INTO tblTags (tag) values ('cats');  -- 1
INSERT INTO tblTags (tag) values ('dogs');  -- 2
INSERT INTO tblTags (tag) values ('fail');  -- 3
INSERT INTO tblTags (tag) values ('huh');   -- 4
INSERT INTO tblTags (tag) values ('wtf');   -- 5
INSERT INTO tblTags (tag) values ('yes');   -- 6
INSERT INTO tblTags (tag) values ('no');    -- 7
INSERT INTO tblTags (tag) values ('awww');  -- 8

-- DOGS
INSERT INTO tblGifs (gif_url, id_user, date_added) values ('http://data3.whicdn.com/images/34685626/large.gif', 1, CURRENT_TIMESTAMP);  -- 1
INSERT INTO jGifsAndTags (id_gif, id_tag, date_added) values (1, 2, CURRENT_TIMESTAMP);
INSERT INTO tblGifs (gif_url, id_user, date_added) values ('http://s3.amazonaws.com/barkpost-assets/50+GIFs/41.gif', 1, CURRENT_TIMESTAMP);  -- 2
INSERT INTO jGifsAndTags (id_gif, id_tag, date_added) values (2, 2, CURRENT_TIMESTAMP);
INSERT INTO tblGifs (gif_url, id_user, date_added) values ('http://fc09.deviantart.net/fs70/f/2012/254/2/9/_cat_n___dog_gif_by_missunicornio-d5ecndw.gif', 1, CURRENT_TIMESTAMP);  -- 3
INSERT INTO jGifsAndTags (id_gif, id_tag, date_added) values (3, 1, CURRENT_TIMESTAMP);
INSERT INTO jGifsAndTags (id_gif, id_tag, date_added) values (3, 2, CURRENT_TIMESTAMP);
INSERT INTO tblGifs (gif_url, id_user, date_added) values ('http://img.pandawhale.com/post-32814-dog-fart-gif-buzzfeed-imgur-g6zs.gif', 1, CURRENT_TIMESTAMP);  -- 4
INSERT INTO jGifsAndTags (id_gif, id_tag, date_added) values (4, 2, CURRENT_TIMESTAMP);
INSERT INTO tblGifs (gif_url, id_user, date_added) values ('http://static.fjcdn.com/gifs/He+Forgot+How+To+Dog_9483a1_4520220.gif', 1, CURRENT_TIMESTAMP);  -- 5
INSERT INTO jGifsAndTags (id_gif, id_tag, date_added) values (5, 2, CURRENT_TIMESTAMP);
INSERT INTO tblGifs (gif_url, id_user, date_added) values ('http://stream1.gifsoup.com/view6/2235859/two-dogs-dining-o.gif', 1, CURRENT_TIMESTAMP);  -- 6
INSERT INTO jGifsAndTags (id_gif, id_tag, date_added) values (6, 2, CURRENT_TIMESTAMP);
INSERT INTO tblGifs (gif_url, id_user, date_added) values ('http://cloemckittrick.com/Pictures/funny-animated-gifs-cats-and-dogs.gif', 1, CURRENT_TIMESTAMP);  -- 7
INSERT INTO jGifsAndTags (id_gif, id_tag, date_added) values (7, 1, CURRENT_TIMESTAMP);
INSERT INTO jGifsAndTags (id_gif, id_tag, date_added) values (7, 2, CURRENT_TIMESTAMP);

-- CATS
INSERT INTO tblGifs (gif_url, id_user, date_added) values ('http://storage.coolfeed.co/2012/10/Funny-Cat-Images-24-GIFs-coolfeed.co-6.gif', 1, CURRENT_TIMESTAMP);  -- 8
INSERT INTO jGifsAndTags (id_gif, id_tag, date_added) values (8, 1, CURRENT_TIMESTAMP);
INSERT INTO tblGifs (gif_url, id_user, date_added) values ('http://storage.coolfeed.co/2012/10/Funny-Cat-Images-24-GIFs-coolfeed.co-10.gif', 1, CURRENT_TIMESTAMP);  -- 9
INSERT INTO jGifsAndTags (id_gif, id_tag, date_added) values (9, 1, CURRENT_TIMESTAMP);
INSERT INTO tblGifs (gif_url, id_user, date_added) values ('http://storage.coolfeed.co/2012/10/Funny-Cat-Images-24-GIFs-coolfeed.co-12.gif', 1, CURRENT_TIMESTAMP);  -- 10
INSERT INTO jGifsAndTags (id_gif, id_tag, date_added) values (10, 1, CURRENT_TIMESTAMP);
INSERT INTO tblGifs (gif_url, id_user, date_added) values ('http://storage.coolfeed.co/2012/10/Funny-Cat-Images-24-GIFs-coolfeed.co-13.gif', 1, CURRENT_TIMESTAMP);  -- 11
INSERT INTO jGifsAndTags (id_gif, id_tag, date_added) values (11, 1, CURRENT_TIMESTAMP);
INSERT INTO tblGifs (gif_url, id_user, date_added) values ('http://storage.coolfeed.co/2012/10/Funny-Cat-Images-24-GIFs-coolfeed.co-19.gif', 1, CURRENT_TIMESTAMP);  -- 12
INSERT INTO jGifsAndTags (id_gif, id_tag, date_added) values (12, 1, CURRENT_TIMESTAMP);
INSERT INTO tblGifs (gif_url, id_user, date_added) values ('http://cdn.acidcow.com/pics/20130429/funny_cats_gifs_09.gif', 1, CURRENT_TIMESTAMP);  -- 13
INSERT INTO jGifsAndTags (id_gif, id_tag, date_added) values (13, 1, CURRENT_TIMESTAMP);
INSERT INTO tblGifs (gif_url, id_user, date_added) values ('http://2.bp.blogspot.com/-AeEKPzZ2eRg/UTTjS3VdBdI/AAAAAAAAgQk/zEoNuvMUeEI/s1600/funny-cat-gifs-040-004.gif', 1, CURRENT_TIMESTAMP);  -- 14
INSERT INTO jGifsAndTags (id_gif, id_tag, date_added) values (14, 1, CURRENT_TIMESTAMP);
INSERT INTO tblGifs (gif_url, id_user, date_added) values ('http://storage.coolfeed.co/2012/10/Funny-Cat-Images-24-GIFs-coolfeed.co-18.gif', 1, CURRENT_TIMESTAMP);  -- 15
INSERT INTO jGifsAndTags (id_gif, id_tag, date_added) values (15, 1, CURRENT_TIMESTAMP);

-- FAIL
INSERT INTO tblGifs (gif_url, id_user, date_added) values ('http://gifshost.com/112010/1290708452_kid-bmx-half-pipe-fail.gif', 1, CURRENT_TIMESTAMP);  -- 16
INSERT INTO jGifsAndTags (id_gif, id_tag, date_added) values (16, 3, CURRENT_TIMESTAMP);
INSERT INTO tblGifs (gif_url, id_user, date_added) values ('http://i.kinja-img.com/gawker-media/image/upload/s--UawQMqaD--/1865f6xuc7wtugif.gif', 1, CURRENT_TIMESTAMP);  -- 17
INSERT INTO jGifsAndTags (id_gif, id_tag, date_added) values (17, 3, CURRENT_TIMESTAMP);
INSERT INTO tblGifs (gif_url, id_user, date_added) values ('http://cdn.smosh.com/sites/default/files/ftpuploads/bloguploads/1213/sexy-fail-pole-dance.gif', 1, CURRENT_TIMESTAMP);  -- 18
INSERT INTO jGifsAndTags (id_gif, id_tag, date_added) values (18, 3, CURRENT_TIMESTAMP);
INSERT INTO tblGifs (gif_url, id_user, date_added) values ('http://s3-ec.buzzfed.com/static/2014-09/3/14/enhanced/webdr07/anigif_enhanced-22537-1409770353-29.gif', 1, CURRENT_TIMESTAMP);  -- 19
INSERT INTO jGifsAndTags (id_gif, id_tag, date_added) values (19, 3, CURRENT_TIMESTAMP);
INSERT INTO tblGifs (gif_url, id_user, date_added) values ('http://s3-ec.buzzfed.com/static/2014-08/6/15/enhanced/webdr11/anigif_enhanced-15737-1407353229-3.gif', 1, CURRENT_TIMESTAMP);  -- 20
INSERT INTO jGifsAndTags (id_gif, id_tag, date_added) values (20, 3, CURRENT_TIMESTAMP);
INSERT INTO tblGifs (gif_url, id_user, date_added) values ('http://s3-ec.buzzfed.com/static/2014-08/6/14/enhanced/webdr07/anigif_enhanced-20791-1407349805-6.gif', 1, CURRENT_TIMESTAMP);  -- 21
INSERT INTO jGifsAndTags (id_gif, id_tag, date_added) values (21, 3, CURRENT_TIMESTAMP);
