CREATE TABLE venues (
  venue_id       SERIAL PRIMARY KEY,
  name           VARCHAR(255),
  street_address TEXT,
  type           CHAR(7) CHECK ( type IN ('public', 'private') ) DEFAULT 'public',
  postal_code    VARCHAR(9),
  country_code   CHAR(2),
  FOREIGN KEY (country_code, postal_code)
  REFERENCES cities (country_code, postal_code) MATCH FULL
);
