import csv
import os
import sys

def shrink_csv(num_crimes, file):
csv_path = 'csv_files'
if not os.path.isdir(csv_path):
os.mkdir(csv_path)
new_csv = open('%s/%s.csv' % (csv_path, "{}_crimes".format(num_crimes)), 'w')
with open(file, 'r') as file:
csv_reader = csv.reader(file, delimiter=',')
crime = []
for row in csv_reader:
crime.append(row[1:22])
for row in crime:
new_csv.write(','.join(row) + '\n')
if __name__ == '__main__':
shrink_csv(sys.argv[1], sys.argv[2])