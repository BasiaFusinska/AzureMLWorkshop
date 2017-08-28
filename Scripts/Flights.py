# The script MUST contain a function named azureml_main
# which is the entry point for this module.

# imports up here can be used to 
import pandas as pd
import numpy as np

# The entry point function can contain up to two input arguments:
#   Param<dataframe1>: a pandas.DataFrame
#   Param<dataframe2>: a pandas.DataFrame
def azureml_main(dataframe1 = None, dataframe2 = None):

    dataframe1['CRSDepTime'] /= 100
    dataframe1['CRSDepTime'] = np.floor(dataframe1['CRSDepTime'])
    dataframe1['CRSArrTime'] /= 100
    dataframe1['CRSArrTime'] = np.floor(dataframe1['CRSArrTime'])
    
    # Return value must be of a sequence of pandas.DataFrame
    return dataframe1,
