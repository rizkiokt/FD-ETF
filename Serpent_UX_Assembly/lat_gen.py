import numpy as np


file = "lat.txt"
surf_id = 999
lat_id = 501
lat_pitch = 1.262
height = 10.0

nrow = 17
ncol = 17

lat_conf = [
# 1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16  17
['F','F','F','F','F','F','F','F','F','F','F','F','F','F','F','F','F'],  #row 1
['F','F','F','F','F','F','F','F','F','F','F','F','F','F','F','F','F'],  #row 2
['F','F','F','F','F','G','F','F','G','F','F','G','F','F','F','F','F'],  #row 3
['F','F','F','G','F','F','F','F','F','F','F','F','F','G','F','F','F'],  #row 4
['F','F','F','F','F','F','F','F','F','F','F','F','F','F','F','F','F'],  #row 5
['F','F','G','F','F','G','F','F','G','F','F','G','F','F','G','F','F'],  #row 6
['F','F','F','F','F','F','F','F','F','F','F','F','F','F','F','F','F'],  #row 7
['F','F','F','F','F','F','F','F','F','F','F','F','F','F','F','F','F'],  #row 8
['F','F','G','F','F','G','F','F','C','F','F','G','F','F','G','F','F'],  #row 9
['F','F','F','F','F','F','F','F','F','F','F','F','F','F','F','F','F'],  #row 10
['F','F','F','F','F','F','F','F','F','F','F','F','F','F','F','F','F'],  #row 11
['F','F','G','F','F','G','F','F','G','F','F','G','F','F','G','F','F'],  #row 12
['F','F','F','F','F','F','F','F','F','F','F','F','F','F','F','F','F'],  #row 13
['F','F','F','G','F','F','F','F','F','F','F','F','F','G','F','F','F'],  #row 14
['F','F','F','F','F','G','F','F','G','F','F','G','F','F','F','F','F'],  #row 15
['F','F','F','F','F','F','F','F','F','F','F','F','F','F','F','F','F'],  #row 16
['F','F','F','F','F','F','F','F','F','F','F','F','F','F','F','F','F'],  #row 17
]

f = open(file,"w")

# write cells for each pin
i = 0
f.write("\n")
f.write("% pin cells \n")
for row in range(nrow):
    text = "% Row " + str(row+1) + "\n"
    f.write(text)
    for col in range(ncol):
        i = i + 1
        pin_type = lat_conf[row][col]
        text = "cell " + "%03d" % i + " " + "%03d" % i +" fill " + pin_type + " -" + str(surf_id) + "\n"
        f.write(text)

# write lattice configuration
f.write("\n")
f.write("% lattice configuration \n")
text = "lat " + str(lat_id) +  " 1  0.0 0.0 " + str(nrow) + " " + str(ncol) + " " + str(lat_pitch) + "\n"
f.write(text)
i = 0
pin_ids = [[]]
for row in range (nrow):
    id_rows = []
    for col in range(ncol):
        i = i + 1
        id_rows.append("%03d" % i)
    pin_ids.append(id_rows)
for row in range (nrow):
    f.write(' '.join(pin_ids[nrow-row])+ "\n")

# generate gcu
f.write("\n")
f.write("% gcus \n")
for row in range (nrow):
    text = "set gcu " + ' '.join(pin_ids[row+1]) + "\n"
    f.write(text)
    
# generate surfaces for ADFs
f.write("\n")
f.write("% ADF surfaces \n")
i = 0
row_mid = (nrow-1)/2
col_mid = (ncol-1)/2
for row in range(nrow-1,-1,-1):
    text = "% Row " + str(nrow-row) + "\n"
    f.write(text)
    if (row<row_mid):
        y1 = -((row_mid-row)+0.5)*lat_pitch
        y2 = y1 + lat_pitch
    elif (row>row_mid):
        y2 = ((row-row_mid)+0.5)*lat_pitch
        y1 = y2 - lat_pitch
    elif (row == row_mid):
        y1 = -lat_pitch
        y2 = lat_pitch
    for col in range(ncol):
        if (col<col_mid):
            x1 = -((col_mid-col)+0.5)*lat_pitch
            x2 = x1 + lat_pitch
        elif (col>col_mid):
            x2 = ((col-col_mid)+0.5)*lat_pitch
            x1 = x2 - lat_pitch
        elif (col == col_mid):
            x1 = -lat_pitch
            x2 = lat_pitch
        # write
        i = i + 1
        text = ("surf " + "%03d" % i + " cuboid " + 
            "%7.3f" %x1 + " " + "%7.3f" %x2 + " " +
            "%7.3f" %y1 + " " + "%7.3f" %y2 + " " +
            "%7.3f" %(0.0) + " " + "%7.3f" %height + "\n")
        f.write(text)        

# generate ADFs
f.write("\n")
f.write("% generate ADFs \n")
i = 0
for row in range(nrow):
    text = "% Row " + str(row+1) + "\n"
    f.write(text)
    for col in range(ncol):
        i = i + 1
        text = "set adf " + "%03d" % i + " " + "%03d" % i + " 0" + "\n"
        f.write(text)

