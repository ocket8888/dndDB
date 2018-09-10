# dndDB
A set of initialization scripts for a _Dungeons and Dragons_ database. (Used by https://github.com/ocket8888/5etools)

## Usage:
Assuming that your user has permission to modify a locally-running PostgreSQL database (and a database has been created for
use with these scripts), simply use the shell script [`loadData.sh`](./loadData.sh) and pass it the name of your database.

For example, on my machine I have created a database to hold the _Dungeons and Dragons_ data named 'dnd', so I would use the
script like so:
```bash
./loadData.sh "dnd"
```

> Note: The [`loadData.sh`](./loadData.sh) script will destroy any existing tables and types by the same name as those it creates. Be sure this doesn't destroy data you want to keep!
