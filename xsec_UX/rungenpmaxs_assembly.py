#!/usr/bin/python
import subprocess
import time
import os
import shutil

serp_file = r"../Serpent_UX_Assembly/Serp17x17_res.m"

numz=1
numxy = 289

lat_conf = [
# 1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16  17
'F','F','F','F','F','F','F','F','F','F','F','F','F','F','F','F','F',  #row 1
'F','F','F','F','F','F','F','F','F','F','F','F','F','F','F','F','F',  #row 2
'F','F','F','F','F','G','F','F','G','F','F','G','F','F','F','F','F',  #row 3
'F','F','F','G','F','F','F','F','F','F','F','F','F','G','F','F','F',  #row 4
'F','F','F','F','F','F','F','F','F','F','F','F','F','F','F','F','F',  #row 5
'F','F','G','F','F','G','F','F','G','F','F','G','F','F','G','F','F',  #row 6
'F','F','F','F','F','F','F','F','F','F','F','F','F','F','F','F','F',  #row 7
'F','F','F','F','F','F','F','F','F','F','F','F','F','F','F','F','F',  #row 8
'F','F','G','F','F','G','F','F','C','F','F','G','F','F','G','F','F',  #row 9
'F','F','F','F','F','F','F','F','F','F','F','F','F','F','F','F','F',  #row 10
'F','F','F','F','F','F','F','F','F','F','F','F','F','F','F','F','F',  #row 11
'F','F','G','F','F','G','F','F','G','F','F','G','F','F','G','F','F',  #row 12
'F','F','F','F','F','F','F','F','F','F','F','F','F','F','F','F','F',  #row 13
'F','F','F','G','F','F','F','F','F','F','F','F','F','G','F','F','F',  #row 14
'F','F','F','F','F','G','F','F','G','F','F','G','F','F','F','F','F',  #row 15
'F','F','F','F','F','F','F','F','F','F','F','F','F','F','F','F','F',  #row 16
'F','F','F','F','F','F','F','F','F','F','F','F','F','F','F','F','F'   #row 17
]

i=0
for iz in range(numz):
  for ixy in range(numxy):
      name = 'N' + '%03d' % (ixy+1)
      input_name = name + '.genpmaxs_inp'
      input_file = open(input_name,'w')
      
      node_type = 1 #fuel
      if (lat_conf[ixy] == 'G'):
          node_type = 0 # refl
           
      input_contents = """%JOB_TIT
 '"""+ name +""".PMAX'  T  3.3
%JOB_OPT
  F  F  F  F  T  F  T  F  F  F  F  F  F  F  0
!ad,xe,de,j1,ch,Xd,iv,dt,yl,cd,gf,be,lb,dc,ups
%DAT_SRC
   9   1   """+str(node_type)+"""  1.0
%STA_VAR
   3
   CR  DC  TF
%HISTORY
   1   1
   HIST01   0.00000    0.78000    900.0
%BRANCH
   1   1
   BLCK01   0.00000    0.78000    900.0
%BURNUP
   1
   BS1 1
          0.00000
   HIST01 1*1
%FIL_CNT
  1  " """+serp_file+""" " 1 """+str(ixy + numxy*iz + 1)+"""
   1  1  1   1  1
URTREDD 0
%TREATXS
   1
   SER 2
   2 2
%JOB_END"""

      input_file.write(input_contents)
      input_file.close()
      print ('Converting PMAXS file for node ', name)
      #Run GenPMAXS 
      subprocess.call('/home/current/a/rizkiokt/bin/genp_v6.2dev_r1bx2.x '+input_name,shell=True)
      exists = os.path.isfile(name +'.stinp')
      if exists:
        os.remove  (name +'.stinp')
      exists = os.path.isfile(name +'.stout')
      if exists:
        os.remove  (name +'.stout')
      exists = os.path.isfile(name +'.out')
      if exists:
        os.remove  (name +'.out')
      exists = os.path.isfile('./'+input_name)
      if exists:
        os.remove  ('./'+input_name)
      exists = os.path.isfile(name +'.kinf')  
      if exists:
        os.remove  (name +'.kinf')      

