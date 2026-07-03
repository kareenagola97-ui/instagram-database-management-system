
## QUERY 
--VIEW OF TABLE

SELECT * FROM users;
SELECT * FROM Post;
SELECT * FROM Comment;
SELECT * FROM follower;
SELECT * FROM likes;
SELECT * FROM hashtag;
SELECT * FROM posthashtag;

## BASIC QUESTION
-- SHow all post and username

-- Show all hashtag used posts

-- How many users are registered?
SELECT  COUNT(*) AS total_users FROM users;
-- How many Posts are uploaded?
SELECT COUNT(*) AS total_post FROM post;
-- How many comments exit?
SELECT COUNT(*) AS total_comeent FROM comment;

-- Which users created the most posts?/most_active
SELECT user_id ,COUNT(*) AS total_post FROM post GROUP BY user_id ORDER BY total_post DESC LIMIT 1 ;
-- Which Users has most foloowers?/highest_followers
SELECT followers_user_id ,COUNT(*) AS total_follower FROM follower GROUP BY followers_user_id  ORDER BY total_follower DESC LIMIT 1;
-- find Top 3 post most liked?
SELECT post_id ,COUNT(*) AS total_likes FROM likes GROUP BY post_id ORDER BY total_likes DESC LIMIT 3;
-- which tag most used?
SELECT t.tag,COUNT(p.posthashtag_id) AS most_used_hashtag FROM hashtag t JOIN posthashtag p ON t.hashtag_id=p.hashtag_id 
GROUP BY t.tag ORDER BY most_used_hashtag DESC;
-- Which users most comments?/ - more_active 
SELECT user_id ,COUNT(*) AS total_comment FROM comment  GROUP BY user_id ORDER BY total_comment DESC LIMIT 1;
-- Find users who never created most a post?
SELECT u.* FROM users u LEFT JOIN post p ON u.user_id =p.user_id WHERE p.post_id IS NULL;
-- Find the post without comment?
SELECT p.post_id FROM post p LEFT JOIN comment c ON p.post_id=c.post_id WHERE c.comment_id IS NULL;
-- Find post without hashatag?
SELECT p.post_id FROM post p LEFT JOIN  posthashtag e ON p.post_id=e.post_id WHERE e.hashtag_id IS NULL;
-- Which post have no likes?
SELECT p.post_id FROM post p LEFT JOIN likes  l ON p.post_id=l.post_id WHERE l.like_id IS NULL;
-- Which users follow the most people?
SELECT following_user_id,COUNT(*) AS most_people FROM follower GROUP BY following_user_id ORDER BY most_people DESC  LIMIT 1;

-- What is the average number of likes per post?
SELECT ROUND(AVG(total_likes),2) FROM (SELECT COUNT(*) AS total_likes FROM likes GROUP BY post_id);
-- What is the average number of comment per post?
SELECT ROUND(AVG(total_comment),2) FROM(SELECT COUNT(*) AS total_comment FROM comment GROUP BY post_id);
-- Which users has the highest engagement?
SELECT user_id ,COUNT(*) AS engagement FROM
(SELECT user_id FROM post UNION ALL SELECT user_id FROM comment UNION ALL SELECT user_id FROM likes ) t GROUP BY user_id 
ORDER BY engagement DESC;







