import csv
inf = csv.reader(open('all_seasons.csv','r'))
for row in inf:
  print(row[4])