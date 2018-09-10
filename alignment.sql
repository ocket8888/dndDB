CREATE TYPE structure AS ENUM ('Chaotic', 'Neutral', 'Lawful');
CREATE TYPE nature AS ENUM ('Evil', 'Neutral', 'Good');

CREATE TYPE alignment AS (structure structure, nature nature);
