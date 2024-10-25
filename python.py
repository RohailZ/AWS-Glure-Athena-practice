import json


input_file = 'products.json'        
output_file = 'products_new.json'  


with open(input_file, 'r') as infile:
    data = json.load(infile)  


with open(output_file, 'w') as outfile:
    for item in data:
        json_line = json.dumps(item)  
        outfile.write(json_line + '\n')  