#%%
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
from scipy import stats
import math
import statistics
import seaborn as sns
from IPython.display import display
import sklearn
import sqlite3
#with open('iris_data.sql','r') as f:
   # lines = [line.strip() for line in f if line.strip()]
#df = pd.DataFrame(lines)
#print(df)

df = pd.read_csv('iris_data.csv')
df = df.rename(columns={'field1':'sepal_len','field2':'sepal_width','field3':'petal_len',
'field4':'petal_width','field5':'type'})
df = df.dropna()

def classtonum(x): 
    if(str(x) == 'Iris-setosa'):
        return(0)
    elif( str(x)  =='Iris-versicolor'):
        return(1)
    elif ( str(x) =='Iris-virginica'):
        return(2)
df['type']=df['type'].apply(classtonum)

plt.scatter(df['sepal_len']['type'==1],df['sepal_width']['type'==1])

from sklearn.model_selection import train_test_split
X_train,X_test,y_train,y_test = train_test_split(df['sepal_len'],df.type,test_size=0.2,random_state= 100)
print(X_test)
display(df)
#%%