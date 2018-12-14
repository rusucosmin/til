"""
Question 67 - Drop rows in dataframe that are between two dates
Given the following dataframe, df, drop all the rows where the contract_sign_date is between 2018-09-01 and 2018-10-13 (inclusive):

df:

vendor_id,name,contract_sign_date,total_spend
1,vendor_schmendor,2018-09-01,34324
2,parts_r_us,2018-09-03,23455
3,vendor_king,2018-10-11,77654
4,vendor_diagram,2018-08-21,23334
5,venny,2018-08-13,94843
6,vendtriloquist,2018-10-29,23444
"""

import pandas as pd

# read data
df = pd.read_csv("67.csv")

# convert string to datetime
df['contract_sign_date'] = pd.to_datetime(df['contract_sign_date'], infer_datetime_format=True)

# get start and end time
start_date = pd.to_datetime('2018-09-01', infer_datetime_format=True)
end_date = pd.to_datetime('2018-10-13', infer_datetime_format=True)

# print the results
print(df[~(df['contract_sign_date'] >= start_date) | ~(df['contract_sign_date'] <= end_date)])
