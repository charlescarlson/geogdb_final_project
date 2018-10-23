import csv
import sys
import os

def create_csv(table):
    csv_path = 'csv_files'
    if not os.path.isdir(csv_path):
        os.mkdir(csv_path)
    new_csv = open('%s/%s.csv' % (csv_path, table + "_staging"), 'w', encoding='utf-8')
    with open('Chicago_Crimes_2012_to_2017.csv', 'r', encoding="utf-8") as file:
        csv_reader = csv.reader(file, delimiter=',')
        if table == 'crime':
            crime = []
            for row in csv_reader:
                if row[3].split(' ')[0][-1] == '5':
                    crime.append([row[1], row[2], row[3], row[9], row[10]])
            for row in crime:
                new_csv.write(','.join(row) + '\n')
        if table == 'crime_location':
            crime_locations = []
            for row in csv_reader:
                if row[3].split(' ')[0][-1] == '5':
                    crime_locations.append([row[2], row[7], row[4], row[22], row[13]])
            for row in crime_locations:
                new_csv.write(','.join(row) + '\n')
        if table == 'crime_type':
            crime_types = []
            for row in csv_reader:
                if row[3].split(' ')[0][-1] == '5':
                    crime_types.append([row[5], row[6], row[7]])
            for row in crime_types:
                new_csv.write(','.join(row) + '\n')
        if table == 'instace_of':
            pass
        if table == 'ward':
            wards = []
            for row in csv_reader:
                if row[3].split(' ')[0][-1] == '5':
                    wards.append([row[13]])
            for row in wards:
                new_csv.write(','.join(row) + '\n')
            
if __name__ == "__main__":
    if sys.argv[1] == '--all':
        create_csv('crime')
        create_csv('crime_location')
        create_csv('crime_type')
        create_csv('instance_of')
        create_csv('ward')
    if len(sys.argv) == 2:
        create_csv(sys.argv[1])
    else:
        for arg in sys.argv[1:]:
            create_csv(arg)
