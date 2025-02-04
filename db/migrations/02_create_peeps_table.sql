CREATE TABLE peeps(
  id INT GENERATED ALWAYS AS IDENTITY,
  content VARCHAR(140) NOT NULL,
  time TIME NOT NULL,
  date DATE NOT NULL,
  user_id INT,
  PRIMARY KEY(id),
  CONSTRAINT fk_user
    FOREIGN KEY(user_id)
      REFERENCES users(id)
      ON DELETE CASCADE
);
