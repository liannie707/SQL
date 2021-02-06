-- UNIT 5 PROJECT 

-- CREATE A VIDEOS TABLE 
CREATE TABLE proj_videos(
video_id int NOT NULL PRIMARY KEY,
title VARCHAR (100) NOT NULL, 
length_min VARCHAR (20) NOT NULL,
url VARCHAR (200) UNIQUE NOT NULL);

INSERT INTO proj_videos (video_id, title, length_min, url)  
VALUES (1, '30 min Full Body Fat Loss Standing Workout (No Jumping) | Quiet Cardio, No Yoga Mat Needed ~ Emi',
		'31:15',
		'https://www.youtube.com/watch?v=gT_XCCJ9bQU'),
		(2, '21 Minute All in One Tone Workout - get your total body lean & sculpted',
		 '23:42',
		 'https://www.youtube.com/watch?v=gsgRJd_-rLI'),
		(3, 'NEW Full Body HIIT Workout to lose Weight | 2021 Flat Stomach Challenge',
		 '16:20',
		 'https://www.youtube.com/watch?v=CPI_Ve7vsHs'),
		(4, '20 MIN FULL BODY WORKOUT // No Equipment | Pamela Reif',
		 '20:20',
		 'https://www.youtube.com/watch?v=UBMk30rjy0o')

SELECT * FROM proj_videos


-- CREATE REVIEWERS TABLE 
CREATE TABLE proj_reviews(
review_id INT NOT NULL PRIMARY KEY,
username VARCHAR (100) UNIQUE NOT NULL, 
rating VARCHAR (20),
review VARCHAR (300) NOT NULL,
video_id INT NOT NULL, 
FOREIGN KEY (video_id) REFERENCES proj_videos(video_id)
);

INSERT INTO proj_reviews (review_id, username, rating, review, video_id)  
VALUES (1, 'Sucharita Ray', '5/5', 
		'These standing workouts are pure gold. U can do some of them in office. And its fantastic', 1),
		(2, 'Niña Ng', '5/5', 
		'I LUV STANDING WORKOUTTT. IMMA ADD THIS TO MY PLAYLIST', 1),
		(3, 'Jenny Cam', '5/5', 
		'Seriously Cassey we never say this enough but thank you for making all these free challenges and videos', 2),
		(4, 'Hailey Nichelle', '5/5', 
		'IM SO HAPPY THERES NO BURPEES - this workout got my heart rate high enough as it is!', 2),
		(5, 'Homareq', '5/5', 
		'Im at the end of the third week of the new challenge and I can finally do it without additional breaks. Im so proud of myself, thank you Chloe!', 3),
		(6, 'Asava07', '5/5', 
		'Today is the day. I was finally able to finished this workout witkout a single break -  and I wasnt doing the low impact exercices! Im proud of myself!', 3),
		(7, 'F T', '5/5', 
		'Proud to say that i can finally do her videos in 1 go without stopping', 4),
		(8, 'SammyG1308', '5/5', 
		'I love how she just doesn’t talk and gets straight to it loved it', 4)

SELECT * FROM proj_reviews


-- REPORT ON VIDEO REVIEWS 
SELECT proj_videos.video_id, proj_reviews.review_id, 
	   proj_videos.title, proj_reviews.rating, proj_reviews.review
FROM proj_videos
INNER JOIN proj_reviews
ON proj_reviews.video_id = proj_videos.video_id

