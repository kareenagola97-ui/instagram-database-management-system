-- Insert the Data
INSERT INTO Users (Username, Email, Full_Name, Bio)
VALUES
('kareena','kareena@gmail.com','Kareena Gola','Data Science Student'),
('rahul','rahul@gmail.com','Rahul Sharma','Traveler'),
('priya','priya@gmail.com','Priya Singh','Photographer'),
('aman','aman@gmail.com','Aman Verma','Engineer'),
('neha','neha@gmail.com','Neha Gupta','Food Blogger'),
('rohit','rohit@gmail.com','Rohit Kumar','Fitness Coach'),
('simran','simran@gmail.com','Simran Kaur','Fashion Designer'),
('arjun','arjun@gmail.com','Arjun Singh','Musician'),
('pooja','pooja@gmail.com','Pooja Sharma','Teacher'),
('vikas','vikas@gmail.com','Vikas Jain','Developer');

INSERT INTO Post
(User_Id, Caption, Image_Url, Location)
VALUES
(1,'Trip to Manali','img1.jpg','Manali'),
(2,'Morning Coffee','img2.jpg','Delhi'),
(3,'Beautiful Sunset','img3.jpg','Goa'),
(4,'Coding Session','img4.jpg','Bangalore'),
(5,'Delicious Food','img5.jpg','Mumbai'),
(6,'Workout Time','img6.jpg','Delhi'),
(7,'New Dress','img7.jpg','Chandigarh'),
(8,'Music Practice','img8.jpg','Punjab'),
(9,'Teaching Students','img9.jpg','Jaipur'),
(10,'Learning SQL','img10.jpg','Noida');

INSERT INTO Followers
(Follower_User_Id, Following_User_Id)
VALUES
(1,2),
(1,3),
(2,1),
(2,5),
(3,1),
(3,4),
(4,5),
(5,6),
(6,7),
(7,8),
(8,9),
(9,10),
(10,1),
(4,1),
(5,1),
(6,1),
(7,1),
(8,1),
(9,1),
(10,2);

INSERT INTO Comment (Post_Id, User_Id, Text)
VALUES
(1,2,'Amazing picture!'),
(1,3,'Beautiful view'),
(2,1,'Nice post'),
(2,4,'Great shot'),
(3,5,'Wonderful'),
(3,6,'Awesome'),
(4,7,'Keep it up'),
(4,8,'Very good'),
(5,9,'Looks delicious'),
(5,10,'Yummy'),
(6,1,'Excellent'),
(6,2,'Super'),
(7,3,'Fantastic'),
(7,4,'Lovely'),
(8,5,'Amazing music'),
(8,6,'Great performance'),
(9,7,'Very inspiring'),
(9,8,'Nice work'),
(10,9,'Helpful'),
(10,10,'Interesting'),
(1,4,'Beautiful'),
(2,5,'Wonderful'),
(3,7,'Nice'),
(4,9,'Excellent'),
(5,1,'Great'),
(6,3,'Fantastic'),
(7,5,'Lovely'),
(8,7,'Amazing'),
(9,2,'Good job'),
(10,4,'Keep learning');
INSERT INTO Likes (Post_Id, User_Id)
VALUES
(1,2),(1,3),(1,4),(1,5),(1,6),
(2,1),(2,3),(2,4),(2,5),(2,6),
(3,1),(3,2),(3,4),(3,5),(3,6),
(4,1),(4,2),(4,3),(4,5),(4,6),
(5,1),(5,2),(5,3),(5,4),(5,6),
(6,1),(6,2),(6,3),(6,4),(6,5),
(7,1),(7,2),(7,3),(7,4),(7,5),
(8,2),(8,3),(8,4),(8,5),(8,6),
(9,1),(9,2),(9,3),(9,4),(9,5),
(10,1),(10,2),(10,3),(10,4),(10,5);
INSERT INTO PostHashtag (Post_Id, Hashtag_Id)
VALUES
(1,1),
(1,3),
(2,2),
(2,5),
(3,3),
(3,8),
(4,5),
(4,10),
(5,2),
(5,6),
(6,4),
(6,9),
(7,6),
(7,8),
(8,7),
(8,3),
(9,10),
(9,1),
(10,5),
(10,10);

INSERT INTO Hashtag (Tag)
VALUES
('#travel'),
('#nature'),
('#food'),
('#fitness'),
('#technology'),
('#coding'),
('#datascience'),
('#ai'),
('#machinelearning'),
('#photography'),
('#fashion'),
('#music'),
('#sports'),
('#education'),
('#motivation'),
('#lifestyle'),
('#health'),
('#adventure'),
('#business'),
('#instagram');

    