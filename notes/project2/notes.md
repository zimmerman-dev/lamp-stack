# Project 2
## Problem Set
We need a blog to share our learnings and increase our marketability. Create a blog system that allows you to write posts, set a title and date them. Create a database to store each post (title, date, and post). Also create a web interface to administer the blog. This administrative interface should be password protected in some way and include the ability to edit and delete the posts.

## Constraints
- Blog must be stylized, use something like bootstrap or a pre-built theme.
- Not acceptable to use a blogging engine.

## Database Design
### Table 1: posts

|: Column  :|:   Data type  :|:          Constraints        :|
|-----------|----------------|-------------------------------|
| post_id   |      INT       |   PRIMARY KEY, AUTO_INCREMENT |
| title     |  VARCHAR(255)  |             NOT NULL          |
| post_date |    DATETIME    |             NOT NULL          |
| content   |      TEXT      |             NOT NULL          |
|-----------|----------------|-------------------------------|

### Table 2: users

|: Column      :|:   Data type  :|:          Constraints        :|
|---------------|----------------|-------------------------------|
|  user_id      |      INT	     |   PRIMARY KEY, AUTO_INCREMENT |
| username      |	VARCHAR(50)  |   	NOT NULL, UNIQUE         |
| password_hash |  VARCHAR(255)  |     	   NOT NULL              |
|---------------|----------------|-------------------------------|

### Setting up the DB connection

#### `dbconnection.php`

```php
    <?php
        // dbconnection.php

        // Database connection constants
        define('DB_HOST', 'localhost');
        define('DB_USER', 'user1');
        define('DB_PASSWORD', 'blogger1');
        define('DB_NAME', 'blog');
    ?>
```
