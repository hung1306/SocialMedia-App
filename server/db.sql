CREATE TABLE users
(
  user_id SERIAL PRIMARY KEY,
  username VARCHAR(100) NOT NULL,
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100) NOT NULL,
  email_address VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL,
  bio TEXT DEFAULT '',
  profile_pic TEXT DEFAULT '',
  followers INTEGER DEFAULT 0,
  following INTEGER DEFAULT 0,
  registered_on VARCHAR(255) NOT NULL
);


CREATE TABLE posts
(
  post_id SERIAL PRIMARY KEY,
  caption TEXT DEFAULT '', 
  image_urls TEXT [] NOT NULL,
  posted_by INTEGER NOT NULL REFERENCES users(user_id) ON DELETE CASCADE,
  posted_on VARCHAR(255) NOT NULL,
  like_count INTEGER DEFAULT 0,
  comment_count INTEGER DEFAULT 0
);

CREATE TABLE likes
(
  like_id SERIAL PRIMARY KEY,
  post_id INTEGER NOT NULL REFERENCES posts(post_id) ON DELETE CASCADE,
  user_id INTEGER NOT NULL REFERENCES users(user_id) ON DELETE CASCADE,
  liked_on VARCHAR(255) NOT NULL
);

CREATE TABLE comments 
(
  comment_id SERIAL PRIMARY KEY,
  post_id INTEGER NOT NULL REFERENCES posts(post_id) ON DELETE CASCADE,
  user_id INTEGER NOT NULL REFERENCES users(user_id) ON DELETE CASCADE,
  comment TEXT NOT NULL,
  commented_on VARCHAR(255) NOT NULL
);

CREATE TABLE followers
(
  follower_id SERIAL PRIMARY KEY,
  follower_user INTEGER NOT NULL REFERENCES users(user_id) ON DELETE CASCADE,
  following_user INTEGER NOT NULL REFERENCES users(user_id) ON DELETE CASCADE,
  followed_on VARCHAR(255) NOT NULL
);


ALTER TABLE posts ALTER COLUMN image_urls DROP NOT NULL;


-- Indexes
CREATE INDEX idx_users_username ON users (username);

CREATE INDEX idx_posts_posted_by ON posts (posted_by);

CREATE INDEX idx_posts_posted_on ON posts (posted_on);
