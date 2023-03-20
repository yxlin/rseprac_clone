import os
os.chdir("E:/Life/Jobs/ITRE/")
import pandas as pa
import numpy as np


path = "tests/data/problem_2/"
filelist = os.listdir(path)
n = len(filelist)
for i, ifile in enumerate(filelist):
    fname = path + ifile
    dtmpi = pa.read_csv(fname, sep='\t')
    numbers = dtmpi.columns.to_numpy()
    x = []
    n = len(numbers)
    for j, jnumber in enumerate(numbers):
        try:
            x.append(float(jnumber))
        except:
            print(ifile, "has NA")
    if (len(x) < 100):
        print(ifile)