import csv
import sys
import os

def create_csv(table):
    csv_path = 'csv_files'
    if not os.path.isdir(csv_path):
        os.mkdir(csv_path)
    new_csv = open('%s/%s.csv' % (csv_path, table), 'w', encoding='utf-8')
    with open('Chicago_Crimes_2012_to_2017.csv', 'r', encoding="utf-8") as file:
        csv_reader = csv.reader(file, delimiter=',')
        line = 0
        for row in csv_reader:
            if row[3].split(' ')[0][-1] == '5':
                new_csv.write(','.join(row) + '\n') 
            
if __name__ == "__main__":
    crime_table = sys.argv[1]
    
    create_csv(crime_table)