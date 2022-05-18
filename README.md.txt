## Data analytics case project
# How to choose the best new NHL player to inquire

# What is this project about

This project tries to show and demonstrate how to answer typical client questions and solve problems using data in somewhat bigger quantities.
Something that a real analytics specialist encounters in his day to day job.  

This is not a typical GitHub code repository.

This projects illustrates how to gather data, insert it into a database and 
then extract the most relevant data to answer business relevant questions - a skill that we all need.

If you are still interested feel free to go through the steps below. 
Draw your own conclusions and let me know if I could make it even better.  

This project may be an example of first data analytics project.
If that's your goal, please, feel inspired to do something similar!

You can use my checklist 
>checklist.docx 
to do so ;) It should help you create a similar project.


# What can you find inside

I tried to present my somewhat limited business intelligence of an NHL coach, trying to answer questions which would
help me buy new players to my team with best value for money ratio.

# Steps

1) Get the data!

Getting to the bone may be sometimes difficult. Although we can freely download data from official state sites like:
- ["Statistisches Bundesamt"](https://www.destatis.de/DE/Home/_inhalt.html),
- ["Główny urząd statystyczny"](https://stat.gov.pl/),
- [Stats NZ](https://stats.govt.nz/large-datasets/csv-files-for-download/),

...

2) List out the important questions!

I decided to play the role of the NHL club's manager.
...  

"I want a new player. Which one should I buy?"
"He should play on this position, ... this is my perspective"
"I am the owner of the club and i want it"

... 

I could go and see a lot of NBA plays and get my own personal opinion
about different players and then choose the best one from my point of view.

Solid companies are based on data. Data is objective and not subjective, 
and that's why business needs people who are able to make a fitting choice 
based on collected data.




Questions:
1) Which player is the best?
2) What positions do those players play?
3) How much do they cost?
4) How many points each of them scored in the last season?


I decided to use https://www.kaggle.com/ as the data provider, because its free ... 

3) Create database and fill it with your collected data

Create a Docker database with schema and import the CSV into the database.

Install docker and run:
> $ docker run --name some-postgres -e POSTGRES_PASSWORD=mysecretpassword -d postgres
, or use the docker-compose.yml file from this repository by running:
> $ docker-compose up -d
This will create container with postgres database. Credentials:
user: postgres
pass: example 

How to quickly fill it with data?
I downloaded the .csv file and 