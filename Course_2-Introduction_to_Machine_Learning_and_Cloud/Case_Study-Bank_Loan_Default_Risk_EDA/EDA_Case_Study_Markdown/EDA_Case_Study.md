# Introduction
- This case study aims to give an idea of applying EDA in a real business scenario. 
- In this case study, we will develop a basic understanding of risk analytics in banking and financial services.
- Use the understanding to minimise the risk of losing money while lending to customers.

## Data Sourcing
### Importing necessary libraries


```python
import warnings
warnings.filterwarnings('ignore')
```


```python
import gc
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import matplotlib.style as style
import seaborn as sns
from typing import List, OrderedDict, Union
from itertools import zip_longest

# setting up plot style 
style.use('seaborn-poster')
style.use('fivethirtyeight')
```


```python
df = pd.read_csv('application_data.csv')
df.shape
```




    (307511, 122)




```python
# Updating pandas config to view dataframes
max_rows_columns = (df.shape[1]//100) * 100
pd.set_option("display.max_rows", max_rows_columns)
pd.set_option("display.max_columns", max_rows_columns)
```

### Sourcing and Processing the "application_data.csv" dataset


```python
df = pd.read_csv('application_data.csv')
df.shape
```




    (307511, 122)




```python
df.head()
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>SK_ID_CURR</th>
      <th>TARGET</th>
      <th>NAME_CONTRACT_TYPE</th>
      <th>CODE_GENDER</th>
      <th>FLAG_OWN_CAR</th>
      <th>FLAG_OWN_REALTY</th>
      <th>CNT_CHILDREN</th>
      <th>AMT_INCOME_TOTAL</th>
      <th>AMT_CREDIT</th>
      <th>AMT_ANNUITY</th>
      <th>AMT_GOODS_PRICE</th>
      <th>NAME_TYPE_SUITE</th>
      <th>NAME_INCOME_TYPE</th>
      <th>NAME_EDUCATION_TYPE</th>
      <th>NAME_FAMILY_STATUS</th>
      <th>NAME_HOUSING_TYPE</th>
      <th>REGION_POPULATION_RELATIVE</th>
      <th>DAYS_BIRTH</th>
      <th>DAYS_EMPLOYED</th>
      <th>DAYS_REGISTRATION</th>
      <th>DAYS_ID_PUBLISH</th>
      <th>OWN_CAR_AGE</th>
      <th>FLAG_MOBIL</th>
      <th>FLAG_EMP_PHONE</th>
      <th>FLAG_WORK_PHONE</th>
      <th>FLAG_CONT_MOBILE</th>
      <th>FLAG_PHONE</th>
      <th>FLAG_EMAIL</th>
      <th>OCCUPATION_TYPE</th>
      <th>CNT_FAM_MEMBERS</th>
      <th>REGION_RATING_CLIENT</th>
      <th>REGION_RATING_CLIENT_W_CITY</th>
      <th>WEEKDAY_APPR_PROCESS_START</th>
      <th>HOUR_APPR_PROCESS_START</th>
      <th>REG_REGION_NOT_LIVE_REGION</th>
      <th>REG_REGION_NOT_WORK_REGION</th>
      <th>LIVE_REGION_NOT_WORK_REGION</th>
      <th>REG_CITY_NOT_LIVE_CITY</th>
      <th>REG_CITY_NOT_WORK_CITY</th>
      <th>LIVE_CITY_NOT_WORK_CITY</th>
      <th>ORGANIZATION_TYPE</th>
      <th>EXT_SOURCE_1</th>
      <th>EXT_SOURCE_2</th>
      <th>EXT_SOURCE_3</th>
      <th>APARTMENTS_AVG</th>
      <th>BASEMENTAREA_AVG</th>
      <th>YEARS_BEGINEXPLUATATION_AVG</th>
      <th>YEARS_BUILD_AVG</th>
      <th>COMMONAREA_AVG</th>
      <th>ELEVATORS_AVG</th>
      <th>...</th>
      <th>APARTMENTS_MEDI</th>
      <th>BASEMENTAREA_MEDI</th>
      <th>YEARS_BEGINEXPLUATATION_MEDI</th>
      <th>YEARS_BUILD_MEDI</th>
      <th>COMMONAREA_MEDI</th>
      <th>ELEVATORS_MEDI</th>
      <th>ENTRANCES_MEDI</th>
      <th>FLOORSMAX_MEDI</th>
      <th>FLOORSMIN_MEDI</th>
      <th>LANDAREA_MEDI</th>
      <th>LIVINGAPARTMENTS_MEDI</th>
      <th>LIVINGAREA_MEDI</th>
      <th>NONLIVINGAPARTMENTS_MEDI</th>
      <th>NONLIVINGAREA_MEDI</th>
      <th>FONDKAPREMONT_MODE</th>
      <th>HOUSETYPE_MODE</th>
      <th>TOTALAREA_MODE</th>
      <th>WALLSMATERIAL_MODE</th>
      <th>EMERGENCYSTATE_MODE</th>
      <th>OBS_30_CNT_SOCIAL_CIRCLE</th>
      <th>DEF_30_CNT_SOCIAL_CIRCLE</th>
      <th>OBS_60_CNT_SOCIAL_CIRCLE</th>
      <th>DEF_60_CNT_SOCIAL_CIRCLE</th>
      <th>DAYS_LAST_PHONE_CHANGE</th>
      <th>FLAG_DOCUMENT_2</th>
      <th>FLAG_DOCUMENT_3</th>
      <th>FLAG_DOCUMENT_4</th>
      <th>FLAG_DOCUMENT_5</th>
      <th>FLAG_DOCUMENT_6</th>
      <th>FLAG_DOCUMENT_7</th>
      <th>FLAG_DOCUMENT_8</th>
      <th>FLAG_DOCUMENT_9</th>
      <th>FLAG_DOCUMENT_10</th>
      <th>FLAG_DOCUMENT_11</th>
      <th>FLAG_DOCUMENT_12</th>
      <th>FLAG_DOCUMENT_13</th>
      <th>FLAG_DOCUMENT_14</th>
      <th>FLAG_DOCUMENT_15</th>
      <th>FLAG_DOCUMENT_16</th>
      <th>FLAG_DOCUMENT_17</th>
      <th>FLAG_DOCUMENT_18</th>
      <th>FLAG_DOCUMENT_19</th>
      <th>FLAG_DOCUMENT_20</th>
      <th>FLAG_DOCUMENT_21</th>
      <th>AMT_REQ_CREDIT_BUREAU_HOUR</th>
      <th>AMT_REQ_CREDIT_BUREAU_DAY</th>
      <th>AMT_REQ_CREDIT_BUREAU_WEEK</th>
      <th>AMT_REQ_CREDIT_BUREAU_MON</th>
      <th>AMT_REQ_CREDIT_BUREAU_QRT</th>
      <th>AMT_REQ_CREDIT_BUREAU_YEAR</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>100002</td>
      <td>1</td>
      <td>Cash loans</td>
      <td>M</td>
      <td>N</td>
      <td>Y</td>
      <td>0</td>
      <td>202500.0</td>
      <td>406597.5</td>
      <td>24700.5</td>
      <td>351000.0</td>
      <td>Unaccompanied</td>
      <td>Working</td>
      <td>Secondary / secondary special</td>
      <td>Single / not married</td>
      <td>House / apartment</td>
      <td>0.018801</td>
      <td>-9461</td>
      <td>-637</td>
      <td>-3648.0</td>
      <td>-2120</td>
      <td>NaN</td>
      <td>1</td>
      <td>1</td>
      <td>0</td>
      <td>1</td>
      <td>1</td>
      <td>0</td>
      <td>Laborers</td>
      <td>1.0</td>
      <td>2</td>
      <td>2</td>
      <td>WEDNESDAY</td>
      <td>10</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>Business Entity Type 3</td>
      <td>0.083037</td>
      <td>0.262949</td>
      <td>0.139376</td>
      <td>0.0247</td>
      <td>0.0369</td>
      <td>0.9722</td>
      <td>0.6192</td>
      <td>0.0143</td>
      <td>0.00</td>
      <td>...</td>
      <td>0.0250</td>
      <td>0.0369</td>
      <td>0.9722</td>
      <td>0.6243</td>
      <td>0.0144</td>
      <td>0.00</td>
      <td>0.0690</td>
      <td>0.0833</td>
      <td>0.1250</td>
      <td>0.0375</td>
      <td>0.0205</td>
      <td>0.0193</td>
      <td>0.0000</td>
      <td>0.00</td>
      <td>reg oper account</td>
      <td>block of flats</td>
      <td>0.0149</td>
      <td>Stone, brick</td>
      <td>No</td>
      <td>2.0</td>
      <td>2.0</td>
      <td>2.0</td>
      <td>2.0</td>
      <td>-1134.0</td>
      <td>0</td>
      <td>1</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>1.0</td>
    </tr>
    <tr>
      <th>1</th>
      <td>100003</td>
      <td>0</td>
      <td>Cash loans</td>
      <td>F</td>
      <td>N</td>
      <td>N</td>
      <td>0</td>
      <td>270000.0</td>
      <td>1293502.5</td>
      <td>35698.5</td>
      <td>1129500.0</td>
      <td>Family</td>
      <td>State servant</td>
      <td>Higher education</td>
      <td>Married</td>
      <td>House / apartment</td>
      <td>0.003541</td>
      <td>-16765</td>
      <td>-1188</td>
      <td>-1186.0</td>
      <td>-291</td>
      <td>NaN</td>
      <td>1</td>
      <td>1</td>
      <td>0</td>
      <td>1</td>
      <td>1</td>
      <td>0</td>
      <td>Core staff</td>
      <td>2.0</td>
      <td>1</td>
      <td>1</td>
      <td>MONDAY</td>
      <td>11</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>School</td>
      <td>0.311267</td>
      <td>0.622246</td>
      <td>NaN</td>
      <td>0.0959</td>
      <td>0.0529</td>
      <td>0.9851</td>
      <td>0.7960</td>
      <td>0.0605</td>
      <td>0.08</td>
      <td>...</td>
      <td>0.0968</td>
      <td>0.0529</td>
      <td>0.9851</td>
      <td>0.7987</td>
      <td>0.0608</td>
      <td>0.08</td>
      <td>0.0345</td>
      <td>0.2917</td>
      <td>0.3333</td>
      <td>0.0132</td>
      <td>0.0787</td>
      <td>0.0558</td>
      <td>0.0039</td>
      <td>0.01</td>
      <td>reg oper account</td>
      <td>block of flats</td>
      <td>0.0714</td>
      <td>Block</td>
      <td>No</td>
      <td>1.0</td>
      <td>0.0</td>
      <td>1.0</td>
      <td>0.0</td>
      <td>-828.0</td>
      <td>0</td>
      <td>1</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
    </tr>
    <tr>
      <th>2</th>
      <td>100004</td>
      <td>0</td>
      <td>Revolving loans</td>
      <td>M</td>
      <td>Y</td>
      <td>Y</td>
      <td>0</td>
      <td>67500.0</td>
      <td>135000.0</td>
      <td>6750.0</td>
      <td>135000.0</td>
      <td>Unaccompanied</td>
      <td>Working</td>
      <td>Secondary / secondary special</td>
      <td>Single / not married</td>
      <td>House / apartment</td>
      <td>0.010032</td>
      <td>-19046</td>
      <td>-225</td>
      <td>-4260.0</td>
      <td>-2531</td>
      <td>26.0</td>
      <td>1</td>
      <td>1</td>
      <td>1</td>
      <td>1</td>
      <td>1</td>
      <td>0</td>
      <td>Laborers</td>
      <td>1.0</td>
      <td>2</td>
      <td>2</td>
      <td>MONDAY</td>
      <td>9</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>Government</td>
      <td>NaN</td>
      <td>0.555912</td>
      <td>0.729567</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>...</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>-815.0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
    </tr>
    <tr>
      <th>3</th>
      <td>100006</td>
      <td>0</td>
      <td>Cash loans</td>
      <td>F</td>
      <td>N</td>
      <td>Y</td>
      <td>0</td>
      <td>135000.0</td>
      <td>312682.5</td>
      <td>29686.5</td>
      <td>297000.0</td>
      <td>Unaccompanied</td>
      <td>Working</td>
      <td>Secondary / secondary special</td>
      <td>Civil marriage</td>
      <td>House / apartment</td>
      <td>0.008019</td>
      <td>-19005</td>
      <td>-3039</td>
      <td>-9833.0</td>
      <td>-2437</td>
      <td>NaN</td>
      <td>1</td>
      <td>1</td>
      <td>0</td>
      <td>1</td>
      <td>0</td>
      <td>0</td>
      <td>Laborers</td>
      <td>2.0</td>
      <td>2</td>
      <td>2</td>
      <td>WEDNESDAY</td>
      <td>17</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>Business Entity Type 3</td>
      <td>NaN</td>
      <td>0.650442</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>...</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>2.0</td>
      <td>0.0</td>
      <td>2.0</td>
      <td>0.0</td>
      <td>-617.0</td>
      <td>0</td>
      <td>1</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>4</th>
      <td>100007</td>
      <td>0</td>
      <td>Cash loans</td>
      <td>M</td>
      <td>N</td>
      <td>Y</td>
      <td>0</td>
      <td>121500.0</td>
      <td>513000.0</td>
      <td>21865.5</td>
      <td>513000.0</td>
      <td>Unaccompanied</td>
      <td>Working</td>
      <td>Secondary / secondary special</td>
      <td>Single / not married</td>
      <td>House / apartment</td>
      <td>0.028663</td>
      <td>-19932</td>
      <td>-3038</td>
      <td>-4311.0</td>
      <td>-3458</td>
      <td>NaN</td>
      <td>1</td>
      <td>1</td>
      <td>0</td>
      <td>1</td>
      <td>0</td>
      <td>0</td>
      <td>Core staff</td>
      <td>1.0</td>
      <td>2</td>
      <td>2</td>
      <td>THURSDAY</td>
      <td>11</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>1</td>
      <td>1</td>
      <td>Religion</td>
      <td>NaN</td>
      <td>0.322738</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>...</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>-1106.0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>1</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
    </tr>
  </tbody>
</table>
<p>5 rows × 122 columns</p>
</div>




```python
def describe_missing_zeros_values(df: pd.core.frame.DataFrame) -> pd.core.frame.DataFrame:
    """Describe Missing and Zero Valued columns in a dataframe.
    
    Args:
        df (pd.core.frame.DataFrame): Dataframe under analysis.
        
    Returns:
        pd.core.frame.Dateframe: Dataframe with missing and zero valued columns and their statistics.
    """
    zero_values = (df == 0.00).astype(int).sum(axis=0)
    missing_values = df.isnull().sum()
    missing_values_percent = missing_values * 100 / len(df)
    missing_zero_df = pd.concat([zero_values, missing_values, missing_values_percent], axis=1)
    missing_zero_df = missing_zero_df.rename(
                            columns = {0 : "Zero Values", 1 : "Missing Values", 2 : "% Missing Values"})
    missing_zero_df["Total Zero & Missing Values"] = missing_zero_df["Zero Values"] + missing_zero_df["Missing Values"]
    missing_zero_df["% Total Zero & Missing Values"] = 100 * missing_zero_df["Total Zero & Missing Values"] / len(df)
    missing_zero_df["Data Type"] = df.dtypes
    missing_zero_df = missing_zero_df[missing_zero_df.iloc[:,1] != 0].sort_values("% Missing Values", ascending=False).round(1)
    print(f"Your selected dataframe has {df.shape[0]} rows {df.shape[1]} columns.")
    print(f"There are {missing_zero_df.shape[0]} columns that have missing values.")
    return missing_zero_df
```


```python
missing_df = describe_missing_zeros_values(df)
display(missing_df)
```

    Your selected dataframe has 307511 rows 122 columns.
    There are 67 columns that have missing values.



<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Zero Values</th>
      <th>Missing Values</th>
      <th>% Missing Values</th>
      <th>Total Zero &amp; Missing Values</th>
      <th>% Total Zero &amp; Missing Values</th>
      <th>Data Type</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>COMMONAREA_MEDI</th>
      <td>8691</td>
      <td>214865</td>
      <td>69.9</td>
      <td>223556</td>
      <td>72.7</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>COMMONAREA_AVG</th>
      <td>8442</td>
      <td>214865</td>
      <td>69.9</td>
      <td>223307</td>
      <td>72.6</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>COMMONAREA_MODE</th>
      <td>9690</td>
      <td>214865</td>
      <td>69.9</td>
      <td>224555</td>
      <td>73.0</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>NONLIVINGAPARTMENTS_MEDI</th>
      <td>56097</td>
      <td>213514</td>
      <td>69.4</td>
      <td>269611</td>
      <td>87.7</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>NONLIVINGAPARTMENTS_MODE</th>
      <td>59255</td>
      <td>213514</td>
      <td>69.4</td>
      <td>272769</td>
      <td>88.7</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>NONLIVINGAPARTMENTS_AVG</th>
      <td>54549</td>
      <td>213514</td>
      <td>69.4</td>
      <td>268063</td>
      <td>87.2</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>FONDKAPREMONT_MODE</th>
      <td>0</td>
      <td>210295</td>
      <td>68.4</td>
      <td>210295</td>
      <td>68.4</td>
      <td>object</td>
    </tr>
    <tr>
      <th>LIVINGAPARTMENTS_MODE</th>
      <td>519</td>
      <td>210199</td>
      <td>68.4</td>
      <td>210718</td>
      <td>68.5</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>LIVINGAPARTMENTS_MEDI</th>
      <td>433</td>
      <td>210199</td>
      <td>68.4</td>
      <td>210632</td>
      <td>68.5</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>LIVINGAPARTMENTS_AVG</th>
      <td>418</td>
      <td>210199</td>
      <td>68.4</td>
      <td>210617</td>
      <td>68.5</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>FLOORSMIN_MODE</th>
      <td>2517</td>
      <td>208642</td>
      <td>67.8</td>
      <td>211159</td>
      <td>68.7</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>FLOORSMIN_MEDI</th>
      <td>2351</td>
      <td>208642</td>
      <td>67.8</td>
      <td>210993</td>
      <td>68.6</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>FLOORSMIN_AVG</th>
      <td>2320</td>
      <td>208642</td>
      <td>67.8</td>
      <td>210962</td>
      <td>68.6</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>YEARS_BUILD_MODE</th>
      <td>103</td>
      <td>204488</td>
      <td>66.5</td>
      <td>204591</td>
      <td>66.5</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>YEARS_BUILD_MEDI</th>
      <td>101</td>
      <td>204488</td>
      <td>66.5</td>
      <td>204589</td>
      <td>66.5</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>YEARS_BUILD_AVG</th>
      <td>102</td>
      <td>204488</td>
      <td>66.5</td>
      <td>204590</td>
      <td>66.5</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>OWN_CAR_AGE</th>
      <td>2134</td>
      <td>202929</td>
      <td>66.0</td>
      <td>205063</td>
      <td>66.7</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>LANDAREA_AVG</th>
      <td>15600</td>
      <td>182590</td>
      <td>59.4</td>
      <td>198190</td>
      <td>64.4</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>LANDAREA_MEDI</th>
      <td>15919</td>
      <td>182590</td>
      <td>59.4</td>
      <td>198509</td>
      <td>64.6</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>LANDAREA_MODE</th>
      <td>17453</td>
      <td>182590</td>
      <td>59.4</td>
      <td>200043</td>
      <td>65.1</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>BASEMENTAREA_MEDI</th>
      <td>14991</td>
      <td>179943</td>
      <td>58.5</td>
      <td>194934</td>
      <td>63.4</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>BASEMENTAREA_AVG</th>
      <td>14745</td>
      <td>179943</td>
      <td>58.5</td>
      <td>194688</td>
      <td>63.3</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>BASEMENTAREA_MODE</th>
      <td>16598</td>
      <td>179943</td>
      <td>58.5</td>
      <td>196541</td>
      <td>63.9</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>EXT_SOURCE_1</th>
      <td>0</td>
      <td>173378</td>
      <td>56.4</td>
      <td>173378</td>
      <td>56.4</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>NONLIVINGAREA_MEDI</th>
      <td>60954</td>
      <td>169682</td>
      <td>55.2</td>
      <td>230636</td>
      <td>75.0</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>NONLIVINGAREA_MODE</th>
      <td>67126</td>
      <td>169682</td>
      <td>55.2</td>
      <td>236808</td>
      <td>77.0</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>NONLIVINGAREA_AVG</th>
      <td>58735</td>
      <td>169682</td>
      <td>55.2</td>
      <td>228417</td>
      <td>74.3</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>ELEVATORS_MEDI</th>
      <td>87026</td>
      <td>163891</td>
      <td>53.3</td>
      <td>250917</td>
      <td>81.6</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>ELEVATORS_MODE</th>
      <td>89498</td>
      <td>163891</td>
      <td>53.3</td>
      <td>253389</td>
      <td>82.4</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>ELEVATORS_AVG</th>
      <td>85718</td>
      <td>163891</td>
      <td>53.3</td>
      <td>249609</td>
      <td>81.2</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>WALLSMATERIAL_MODE</th>
      <td>0</td>
      <td>156341</td>
      <td>50.8</td>
      <td>156341</td>
      <td>50.8</td>
      <td>object</td>
    </tr>
    <tr>
      <th>APARTMENTS_MODE</th>
      <td>976</td>
      <td>156061</td>
      <td>50.7</td>
      <td>157037</td>
      <td>51.1</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>APARTMENTS_MEDI</th>
      <td>771</td>
      <td>156061</td>
      <td>50.7</td>
      <td>156832</td>
      <td>51.0</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>APARTMENTS_AVG</th>
      <td>751</td>
      <td>156061</td>
      <td>50.7</td>
      <td>156812</td>
      <td>51.0</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>ENTRANCES_MODE</th>
      <td>387</td>
      <td>154828</td>
      <td>50.3</td>
      <td>155215</td>
      <td>50.5</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>ENTRANCES_AVG</th>
      <td>323</td>
      <td>154828</td>
      <td>50.3</td>
      <td>155151</td>
      <td>50.5</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>ENTRANCES_MEDI</th>
      <td>329</td>
      <td>154828</td>
      <td>50.3</td>
      <td>155157</td>
      <td>50.5</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>LIVINGAREA_MEDI</th>
      <td>299</td>
      <td>154350</td>
      <td>50.2</td>
      <td>154649</td>
      <td>50.3</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>LIVINGAREA_MODE</th>
      <td>444</td>
      <td>154350</td>
      <td>50.2</td>
      <td>154794</td>
      <td>50.3</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>LIVINGAREA_AVG</th>
      <td>284</td>
      <td>154350</td>
      <td>50.2</td>
      <td>154634</td>
      <td>50.3</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>HOUSETYPE_MODE</th>
      <td>0</td>
      <td>154297</td>
      <td>50.2</td>
      <td>154297</td>
      <td>50.2</td>
      <td>object</td>
    </tr>
    <tr>
      <th>FLOORSMAX_MEDI</th>
      <td>2995</td>
      <td>153020</td>
      <td>49.8</td>
      <td>156015</td>
      <td>50.7</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>FLOORSMAX_AVG</th>
      <td>2938</td>
      <td>153020</td>
      <td>49.8</td>
      <td>155958</td>
      <td>50.7</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>FLOORSMAX_MODE</th>
      <td>3415</td>
      <td>153020</td>
      <td>49.8</td>
      <td>156435</td>
      <td>50.9</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>YEARS_BEGINEXPLUATATION_AVG</th>
      <td>514</td>
      <td>150007</td>
      <td>48.8</td>
      <td>150521</td>
      <td>48.9</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>YEARS_BEGINEXPLUATATION_MEDI</th>
      <td>548</td>
      <td>150007</td>
      <td>48.8</td>
      <td>150555</td>
      <td>49.0</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>YEARS_BEGINEXPLUATATION_MODE</th>
      <td>142</td>
      <td>150007</td>
      <td>48.8</td>
      <td>150149</td>
      <td>48.8</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>TOTALAREA_MODE</th>
      <td>582</td>
      <td>148431</td>
      <td>48.3</td>
      <td>149013</td>
      <td>48.5</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>EMERGENCYSTATE_MODE</th>
      <td>0</td>
      <td>145755</td>
      <td>47.4</td>
      <td>145755</td>
      <td>47.4</td>
      <td>object</td>
    </tr>
    <tr>
      <th>OCCUPATION_TYPE</th>
      <td>0</td>
      <td>96391</td>
      <td>31.3</td>
      <td>96391</td>
      <td>31.3</td>
      <td>object</td>
    </tr>
    <tr>
      <th>EXT_SOURCE_3</th>
      <td>0</td>
      <td>60965</td>
      <td>19.8</td>
      <td>60965</td>
      <td>19.8</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>AMT_REQ_CREDIT_BUREAU_WEEK</th>
      <td>257456</td>
      <td>41519</td>
      <td>13.5</td>
      <td>298975</td>
      <td>97.2</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>AMT_REQ_CREDIT_BUREAU_DAY</th>
      <td>264503</td>
      <td>41519</td>
      <td>13.5</td>
      <td>306022</td>
      <td>99.5</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>AMT_REQ_CREDIT_BUREAU_MON</th>
      <td>222233</td>
      <td>41519</td>
      <td>13.5</td>
      <td>263752</td>
      <td>85.8</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>AMT_REQ_CREDIT_BUREAU_QRT</th>
      <td>215417</td>
      <td>41519</td>
      <td>13.5</td>
      <td>256936</td>
      <td>83.6</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>AMT_REQ_CREDIT_BUREAU_HOUR</th>
      <td>264366</td>
      <td>41519</td>
      <td>13.5</td>
      <td>305885</td>
      <td>99.5</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>AMT_REQ_CREDIT_BUREAU_YEAR</th>
      <td>71801</td>
      <td>41519</td>
      <td>13.5</td>
      <td>113320</td>
      <td>36.9</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>NAME_TYPE_SUITE</th>
      <td>0</td>
      <td>1292</td>
      <td>0.4</td>
      <td>1292</td>
      <td>0.4</td>
      <td>object</td>
    </tr>
    <tr>
      <th>DEF_30_CNT_SOCIAL_CIRCLE</th>
      <td>271324</td>
      <td>1021</td>
      <td>0.3</td>
      <td>272345</td>
      <td>88.6</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>OBS_60_CNT_SOCIAL_CIRCLE</th>
      <td>164666</td>
      <td>1021</td>
      <td>0.3</td>
      <td>165687</td>
      <td>53.9</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>DEF_60_CNT_SOCIAL_CIRCLE</th>
      <td>280721</td>
      <td>1021</td>
      <td>0.3</td>
      <td>281742</td>
      <td>91.6</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>OBS_30_CNT_SOCIAL_CIRCLE</th>
      <td>163910</td>
      <td>1021</td>
      <td>0.3</td>
      <td>164931</td>
      <td>53.6</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>EXT_SOURCE_2</th>
      <td>0</td>
      <td>660</td>
      <td>0.2</td>
      <td>660</td>
      <td>0.2</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>AMT_GOODS_PRICE</th>
      <td>0</td>
      <td>278</td>
      <td>0.1</td>
      <td>278</td>
      <td>0.1</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>AMT_ANNUITY</th>
      <td>0</td>
      <td>12</td>
      <td>0.0</td>
      <td>12</td>
      <td>0.0</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>CNT_FAM_MEMBERS</th>
      <td>0</td>
      <td>2</td>
      <td>0.0</td>
      <td>2</td>
      <td>0.0</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>DAYS_LAST_PHONE_CHANGE</th>
      <td>37672</td>
      <td>1</td>
      <td>0.0</td>
      <td>37673</td>
      <td>12.3</td>
      <td>float64</td>
    </tr>
  </tbody>
</table>
</div>


#### Insights
There are many columns in application data dataframe where missing value is more than 40%. Let's plot the columns vs missing value % with 40% being the cut-off marks


```python
fig = plt.figure(figsize=(20,10))
ax = sns.pointplot(x = missing_df.index,
                   y = "% Missing Values",
                   data = missing_df,
                   color = 'blue')
plt.xticks(rotation=90, 
           fontsize =7)
ax.axhline(40, 
           ls ='--', 
           color = 'red')
plt.title("Percentage of Missing values in the application data")
plt.ylabel("% Missing Values")
plt.xlabel("Columns")
plt.xticks(fontsize=15, rotation=90)
plt.show()
```


    
![png](output_12_0.png)
    


#### Insight

From the plot we can see the columns in which percentage of null values more than 40% are marked above the red line and the columns which have less than 40 % null values below the red line. Let's check the columns which has more than 40% missing values


```python
threshold_missing_percent = 40
missing_gt_thresh_df = missing_df[missing_df["% Missing Values"] > threshold_missing_percent]
missing_gt_thresh_df
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Zero Values</th>
      <th>Missing Values</th>
      <th>% Missing Values</th>
      <th>Total Zero &amp; Missing Values</th>
      <th>% Total Zero &amp; Missing Values</th>
      <th>Data Type</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>COMMONAREA_MEDI</th>
      <td>8691</td>
      <td>214865</td>
      <td>69.9</td>
      <td>223556</td>
      <td>72.7</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>COMMONAREA_AVG</th>
      <td>8442</td>
      <td>214865</td>
      <td>69.9</td>
      <td>223307</td>
      <td>72.6</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>COMMONAREA_MODE</th>
      <td>9690</td>
      <td>214865</td>
      <td>69.9</td>
      <td>224555</td>
      <td>73.0</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>NONLIVINGAPARTMENTS_MEDI</th>
      <td>56097</td>
      <td>213514</td>
      <td>69.4</td>
      <td>269611</td>
      <td>87.7</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>NONLIVINGAPARTMENTS_MODE</th>
      <td>59255</td>
      <td>213514</td>
      <td>69.4</td>
      <td>272769</td>
      <td>88.7</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>NONLIVINGAPARTMENTS_AVG</th>
      <td>54549</td>
      <td>213514</td>
      <td>69.4</td>
      <td>268063</td>
      <td>87.2</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>FONDKAPREMONT_MODE</th>
      <td>0</td>
      <td>210295</td>
      <td>68.4</td>
      <td>210295</td>
      <td>68.4</td>
      <td>object</td>
    </tr>
    <tr>
      <th>LIVINGAPARTMENTS_MODE</th>
      <td>519</td>
      <td>210199</td>
      <td>68.4</td>
      <td>210718</td>
      <td>68.5</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>LIVINGAPARTMENTS_MEDI</th>
      <td>433</td>
      <td>210199</td>
      <td>68.4</td>
      <td>210632</td>
      <td>68.5</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>LIVINGAPARTMENTS_AVG</th>
      <td>418</td>
      <td>210199</td>
      <td>68.4</td>
      <td>210617</td>
      <td>68.5</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>FLOORSMIN_MODE</th>
      <td>2517</td>
      <td>208642</td>
      <td>67.8</td>
      <td>211159</td>
      <td>68.7</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>FLOORSMIN_MEDI</th>
      <td>2351</td>
      <td>208642</td>
      <td>67.8</td>
      <td>210993</td>
      <td>68.6</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>FLOORSMIN_AVG</th>
      <td>2320</td>
      <td>208642</td>
      <td>67.8</td>
      <td>210962</td>
      <td>68.6</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>YEARS_BUILD_MODE</th>
      <td>103</td>
      <td>204488</td>
      <td>66.5</td>
      <td>204591</td>
      <td>66.5</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>YEARS_BUILD_MEDI</th>
      <td>101</td>
      <td>204488</td>
      <td>66.5</td>
      <td>204589</td>
      <td>66.5</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>YEARS_BUILD_AVG</th>
      <td>102</td>
      <td>204488</td>
      <td>66.5</td>
      <td>204590</td>
      <td>66.5</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>OWN_CAR_AGE</th>
      <td>2134</td>
      <td>202929</td>
      <td>66.0</td>
      <td>205063</td>
      <td>66.7</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>LANDAREA_AVG</th>
      <td>15600</td>
      <td>182590</td>
      <td>59.4</td>
      <td>198190</td>
      <td>64.4</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>LANDAREA_MEDI</th>
      <td>15919</td>
      <td>182590</td>
      <td>59.4</td>
      <td>198509</td>
      <td>64.6</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>LANDAREA_MODE</th>
      <td>17453</td>
      <td>182590</td>
      <td>59.4</td>
      <td>200043</td>
      <td>65.1</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>BASEMENTAREA_MEDI</th>
      <td>14991</td>
      <td>179943</td>
      <td>58.5</td>
      <td>194934</td>
      <td>63.4</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>BASEMENTAREA_AVG</th>
      <td>14745</td>
      <td>179943</td>
      <td>58.5</td>
      <td>194688</td>
      <td>63.3</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>BASEMENTAREA_MODE</th>
      <td>16598</td>
      <td>179943</td>
      <td>58.5</td>
      <td>196541</td>
      <td>63.9</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>EXT_SOURCE_1</th>
      <td>0</td>
      <td>173378</td>
      <td>56.4</td>
      <td>173378</td>
      <td>56.4</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>NONLIVINGAREA_MEDI</th>
      <td>60954</td>
      <td>169682</td>
      <td>55.2</td>
      <td>230636</td>
      <td>75.0</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>NONLIVINGAREA_MODE</th>
      <td>67126</td>
      <td>169682</td>
      <td>55.2</td>
      <td>236808</td>
      <td>77.0</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>NONLIVINGAREA_AVG</th>
      <td>58735</td>
      <td>169682</td>
      <td>55.2</td>
      <td>228417</td>
      <td>74.3</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>ELEVATORS_MEDI</th>
      <td>87026</td>
      <td>163891</td>
      <td>53.3</td>
      <td>250917</td>
      <td>81.6</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>ELEVATORS_MODE</th>
      <td>89498</td>
      <td>163891</td>
      <td>53.3</td>
      <td>253389</td>
      <td>82.4</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>ELEVATORS_AVG</th>
      <td>85718</td>
      <td>163891</td>
      <td>53.3</td>
      <td>249609</td>
      <td>81.2</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>WALLSMATERIAL_MODE</th>
      <td>0</td>
      <td>156341</td>
      <td>50.8</td>
      <td>156341</td>
      <td>50.8</td>
      <td>object</td>
    </tr>
    <tr>
      <th>APARTMENTS_MODE</th>
      <td>976</td>
      <td>156061</td>
      <td>50.7</td>
      <td>157037</td>
      <td>51.1</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>APARTMENTS_MEDI</th>
      <td>771</td>
      <td>156061</td>
      <td>50.7</td>
      <td>156832</td>
      <td>51.0</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>APARTMENTS_AVG</th>
      <td>751</td>
      <td>156061</td>
      <td>50.7</td>
      <td>156812</td>
      <td>51.0</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>ENTRANCES_MODE</th>
      <td>387</td>
      <td>154828</td>
      <td>50.3</td>
      <td>155215</td>
      <td>50.5</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>ENTRANCES_AVG</th>
      <td>323</td>
      <td>154828</td>
      <td>50.3</td>
      <td>155151</td>
      <td>50.5</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>ENTRANCES_MEDI</th>
      <td>329</td>
      <td>154828</td>
      <td>50.3</td>
      <td>155157</td>
      <td>50.5</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>LIVINGAREA_MEDI</th>
      <td>299</td>
      <td>154350</td>
      <td>50.2</td>
      <td>154649</td>
      <td>50.3</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>LIVINGAREA_MODE</th>
      <td>444</td>
      <td>154350</td>
      <td>50.2</td>
      <td>154794</td>
      <td>50.3</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>LIVINGAREA_AVG</th>
      <td>284</td>
      <td>154350</td>
      <td>50.2</td>
      <td>154634</td>
      <td>50.3</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>HOUSETYPE_MODE</th>
      <td>0</td>
      <td>154297</td>
      <td>50.2</td>
      <td>154297</td>
      <td>50.2</td>
      <td>object</td>
    </tr>
    <tr>
      <th>FLOORSMAX_MEDI</th>
      <td>2995</td>
      <td>153020</td>
      <td>49.8</td>
      <td>156015</td>
      <td>50.7</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>FLOORSMAX_AVG</th>
      <td>2938</td>
      <td>153020</td>
      <td>49.8</td>
      <td>155958</td>
      <td>50.7</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>FLOORSMAX_MODE</th>
      <td>3415</td>
      <td>153020</td>
      <td>49.8</td>
      <td>156435</td>
      <td>50.9</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>YEARS_BEGINEXPLUATATION_AVG</th>
      <td>514</td>
      <td>150007</td>
      <td>48.8</td>
      <td>150521</td>
      <td>48.9</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>YEARS_BEGINEXPLUATATION_MEDI</th>
      <td>548</td>
      <td>150007</td>
      <td>48.8</td>
      <td>150555</td>
      <td>49.0</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>YEARS_BEGINEXPLUATATION_MODE</th>
      <td>142</td>
      <td>150007</td>
      <td>48.8</td>
      <td>150149</td>
      <td>48.8</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>TOTALAREA_MODE</th>
      <td>582</td>
      <td>148431</td>
      <td>48.3</td>
      <td>149013</td>
      <td>48.5</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>EMERGENCYSTATE_MODE</th>
      <td>0</td>
      <td>145755</td>
      <td>47.4</td>
      <td>145755</td>
      <td>47.4</td>
      <td>object</td>
    </tr>
  </tbody>
</table>
</div>




```python
missing_gt_thresh_df.shape
```




    (49, 6)



#### Insight
Total of 49 columns are there which have more than 40% null values.Seems like most of the columns with high missing values are related to different area sizes on apartment owned/rented by the loan applicant


```python
# Checking correlation of EXT_SOURCE_X columns vs TARGET column
source_df = df[["EXT_SOURCE_1","EXT_SOURCE_2","EXT_SOURCE_3","TARGET"]]
source_corr = source_df.corr()
ax = sns.heatmap(source_corr,
                 xticklabels=source_corr.columns,
                 yticklabels=source_corr.columns,
                 annot = True,
                 cmap ="RdYlGn")
```


    
![png](output_17_0.png)
    


#### Insight
Based on the above Heatmap, we can see there is almost no correlation between EXT_SOURCE_X columns and target column, thus we can drop these columns. EXT_SOURCE_1 has 56% null values, where as EXT_SOURCE_3 has close to 20% null values


```python
# Create a list of columns that needs to be dropped including the columns 
# with >40% null values
irrelevant_columns = missing_gt_thresh_df.index.tolist() + ['EXT_SOURCE_2','EXT_SOURCE_3'] 
# as EXT_SOURCE_1 column is already included in irrelevant_columns 

print(f"Irrelevant colmuns to be removed: {len(irrelevant_columns)}")
```

    Irrelevant colmuns to be removed: 51


### Analyzing the "FLAG_DOCUMENTS_X" (X in 2 and 21) columns
- There are 20 columns for 'FLAG_DOCUMENT_X', as these are binary flags.
- Checking the relevance of Flag_Document and whether it has any relation with loan repayment status


```python
# Creating a list with the attribute name starting "FLAG_DOCUMENT_"
flag_docs_cols = [col for col in df.columns if col.startswith("FLAG_DOCUMENT_")]
print(flag_docs_cols)
```

    ['FLAG_DOCUMENT_2', 'FLAG_DOCUMENT_3', 'FLAG_DOCUMENT_4', 'FLAG_DOCUMENT_5', 'FLAG_DOCUMENT_6', 'FLAG_DOCUMENT_7', 'FLAG_DOCUMENT_8', 'FLAG_DOCUMENT_9', 'FLAG_DOCUMENT_10', 'FLAG_DOCUMENT_11', 'FLAG_DOCUMENT_12', 'FLAG_DOCUMENT_13', 'FLAG_DOCUMENT_14', 'FLAG_DOCUMENT_15', 'FLAG_DOCUMENT_16', 'FLAG_DOCUMENT_17', 'FLAG_DOCUMENT_18', 'FLAG_DOCUMENT_19', 'FLAG_DOCUMENT_20', 'FLAG_DOCUMENT_21']



```python
df_flag = df[flag_docs_cols+["TARGET"]]

length = len(flag_docs_cols)

df_flag["TARGET"] = df_flag["TARGET"].replace({1:"Defaulter", 
                                               0:"Non-Defaulter"})

fig = plt.figure(figsize=(21,24))

for i,j in zip_longest(flag_docs_cols, range(length)):
    plt.subplot(5,4,j+1)
    ax = sns.countplot(df_flag[i],
                       hue=df_flag["TARGET"],
                       palette=["r","g"])
    plt.yticks(fontsize=8)
    plt.xlabel("")
    plt.ylabel("")
    plt.title(i)
```


    
![png](output_22_0.png)
    


#### Insight
The above graphs shows that in most of the loan application cases, clients who applied for loans has not submitted FLAG_DOCUMENT_X except FLAG_DOCUMENT_3. Thus, Except for FLAG_DOCUMENT_3, we can delete rest of the columns. Data shows if borrower has submitted FLAG_DOCUMENT_3 then there is a less chance of defaulting the loan.


```python
# Including the flag documents for dropping the Document columns

flag_docs_cols.remove('FLAG_DOCUMENT_3') 
irrelevant_columns.extend(flag_docs_cols)
print(f"Irrelevant colmuns to be removed: {len(irrelevant_columns)}")
```

    Irrelevant colmuns to be removed: 70


#### Missing value analysis
There about 67 columns that have Missing values and 49 of them have more than 45% missing values.
- We should get better understanding of the business importance of these columns.
- The EXT_SOURCE_1 has about 56% of missing value whereas a similar column EXT_SOURCE_2 has about 0.2% missing values. 
- As we don't have a business udnerstanding as to the weightage of these columns we can't be sure to drop the columns just based on missing value count.

### Imputing NaN's and Incorrect Values
#### Replacing Categorical Variables


```python
df.OCCUPATION_TYPE.value_counts(dropna=False, normalize=True) * 100
```




    NaN                      31.345545
    Laborers                 17.946025
    Sales staff              10.439301
    Core staff                8.965533
    Managers                  6.949670
    Drivers                   6.049540
    High skill tech staff     3.700681
    Accountants               3.191105
    Medicine staff            2.776161
    Security staff            2.185613
    Cooking staff             1.933589
    Cleaning staff            1.513117
    Private service staff     0.862408
    Low-skill Laborers        0.680626
    Waiters/barmen staff      0.438358
    Secretaries               0.424375
    Realty agents             0.244219
    HR staff                  0.183083
    IT staff                  0.171051
    Name: OCCUPATION_TYPE, dtype: float64




```python
df.OCCUPATION_TYPE.fillna('Unknown', inplace=True)
df.OCCUPATION_TYPE.value_counts(dropna = False, normalize=True) * 100
```




    Unknown                  31.345545
    Laborers                 17.946025
    Sales staff              10.439301
    Core staff                8.965533
    Managers                  6.949670
    Drivers                   6.049540
    High skill tech staff     3.700681
    Accountants               3.191105
    Medicine staff            2.776161
    Security staff            2.185613
    Cooking staff             1.933589
    Cleaning staff            1.513117
    Private service staff     0.862408
    Low-skill Laborers        0.680626
    Waiters/barmen staff      0.438358
    Secretaries               0.424375
    Realty agents             0.244219
    HR staff                  0.183083
    IT staff                  0.171051
    Name: OCCUPATION_TYPE, dtype: float64



The following numerical columns have NaN's that can be replaced with 0 as that makes more sense based on the column descriptions

- DAYS_REGISTRATION
- CNT_FAM_MEMBERS
- OBS_30_CNT_SOCIAL_CIRCLE
- DEF_30_CNT_SOCIAL_CIRCLE
- OBS_60_CNT_SOCIAL_CIRCLE
- DEF_60_CNT_SOCIAL_CIRCLE


```python
df.DAYS_REGISTRATION.fillna(0, inplace=True)
df.CNT_FAM_MEMBERS.fillna(0, inplace=True)
df.OBS_30_CNT_SOCIAL_CIRCLE.fillna(0, inplace=True)
df.DEF_30_CNT_SOCIAL_CIRCLE.fillna(0, inplace=True)
df.OBS_60_CNT_SOCIAL_CIRCLE.fillna(0, inplace=True)
df.DEF_60_CNT_SOCIAL_CIRCLE.fillna(0, inplace=True)
```

### Converting Datatypes


```python
data_types = ["int64", "float64", "object"]
for dt in data_types:
    print(f"Data Type ({dt}): {df.select_dtypes(dt).shape[1]}")
```

    Data Type (int64): 41
    Data Type (float64): 65
    Data Type (object): 16



```python
df.select_dtypes('object').nunique()
```




    NAME_CONTRACT_TYPE             2
    CODE_GENDER                    3
    FLAG_OWN_CAR                   2
    FLAG_OWN_REALTY                2
    NAME_TYPE_SUITE                7
    NAME_INCOME_TYPE               8
    NAME_EDUCATION_TYPE            5
    NAME_FAMILY_STATUS             6
    NAME_HOUSING_TYPE              6
    OCCUPATION_TYPE               19
    WEEKDAY_APPR_PROCESS_START     7
    ORGANIZATION_TYPE             58
    FONDKAPREMONT_MODE             4
    HOUSETYPE_MODE                 3
    WALLSMATERIAL_MODE             7
    EMERGENCYSTATE_MODE            2
    dtype: int64



### Categorical Attributes

The following columns with object data_types can be converted to numerical types (1, 0) instead of ("Y", "N"), making it beneficial for our analysis.
- FLAG_OWN_CAR
- FLAG_OWN_REALTY


```python
# Converting the aforementioned categorical object type to numeric type. 
# Assuming the value of 1 refers to "Yes" and 0 refers to "No"

df.FLAG_OWN_CAR.replace("Y", 1, inplace=True)
df.FLAG_OWN_CAR.replace("N", 0, inplace=True)

df.FLAG_OWN_REALTY.replace("Y", 1, inplace=True)
df.FLAG_OWN_REALTY.replace("N", 0, inplace=True)
```

#### Converting float type to int for attributes that makes more int
The following columns would make more sense as 'int' datatypes:
- DAYS_REGISTRATION
- CNT_FAM_MEMBERS
- OBS_30_CNT_SOCIAL_CIRCLE
- DEF_30_CNT_SOCIAL_CIRCLE
- OBS_60_CNT_SOCIAL_CIRCLE
- DEF_60_CNT_SOCIAL_CIRCLE


```python
df.DAYS_REGISTRATION = df.DAYS_REGISTRATION.astype(int)
df.CNT_FAM_MEMBERS = df.CNT_FAM_MEMBERS.astype(int)
df.OBS_30_CNT_SOCIAL_CIRCLE = df.OBS_30_CNT_SOCIAL_CIRCLE.astype(int)
df.DEF_30_CNT_SOCIAL_CIRCLE = df.DEF_30_CNT_SOCIAL_CIRCLE.astype(int)
df.OBS_60_CNT_SOCIAL_CIRCLE = df.OBS_60_CNT_SOCIAL_CIRCLE.astype(int)
df.DEF_60_CNT_SOCIAL_CIRCLE = df.DEF_60_CNT_SOCIAL_CIRCLE.astype(int)
```

#### Converting Negetive Values to Positives

These columns have negative value to signify reltaivity. Will convert them to positive values for better analysis.


```python
# Converting "DAYS_BIRTH" to "AGE" by dividing by (taking into consideration leap year) will be useful later
df.DAYS_BIRTH = abs(df.DAYS_BIRTH//365.25)
# Renaming "DAYS_BIRTH" to "AGE" to make more sense
df.rename(columns = {'DAYS_BIRTH': 'AGE'}, inplace = True)
```


```python
# Converting "DAYS_EMPLOYED", "DAYS_REGISTRATION", "DAYS_ID_PUBLISH" and 
# "DAYS_LAST_PHONE_CHANGE" to it's respectful absolute value
df.DAYS_EMPLOYED = abs(df.DAYS_EMPLOYED)
df.DAYS_REGISTRATION = abs(df.DAYS_REGISTRATION)
df.DAYS_ID_PUBLISH = abs(df.DAYS_ID_PUBLISH)
df.DAYS_LAST_PHONE_CHANGE = abs(df.DAYS_LAST_PHONE_CHANGE)
```

### Contact Parameters
Checking if there is any correlation between mobile phone, work phone etc, email, Family members and Region rating


```python
contact_col = ['FLAG_MOBIL', 'FLAG_EMP_PHONE', 'FLAG_WORK_PHONE', 'FLAG_CONT_MOBILE',
       'FLAG_PHONE', 'FLAG_EMAIL','TARGET']
Contact_corr = df[contact_col].corr()
fig = plt.figure(figsize=(8,8))
ax = sns.heatmap(Contact_corr,
                 xticklabels=Contact_corr.columns,
                 yticklabels=Contact_corr.columns,
                 annot = True,
                 cmap ="RdYlGn",
                 linewidth=1)
plt.show()
```


    
![png](output_43_0.png)
    


#### Insight
There seems to be very low to no correlation between flags of mobile phone, email etc with loan repayment; thus these columns can be deleted


```python
# including the 6 FLAG columns to be deleted
contact_col.remove('TARGET') 
irrelevant_columns.extend(contact_col)
print(f"Irrelevant colmuns to be removed: {len(irrelevant_columns)}")
```

    Irrelevant colmuns to be removed: 76


### Dropping irrelevant columns


```python
# Dropping the unnecessary columns from df
df.drop(labels=irrelevant_columns,
        axis=1,
        inplace=True)

# Inspecting the dataframe after removal of unnecessary columns
print(f"Shape of Dataframe after removing irrelevant coluns: {df.shape}")
```

    Shape of Dataframe after removing irrelevant coluns: (307511, 46)



```python
# inspecting the column types after removal of unnecessary columns
df.info()
```

    <class 'pandas.core.frame.DataFrame'>
    RangeIndex: 307511 entries, 0 to 307510
    Data columns (total 46 columns):
     #   Column                       Non-Null Count   Dtype  
    ---  ------                       --------------   -----  
     0   SK_ID_CURR                   307511 non-null  int64  
     1   TARGET                       307511 non-null  int64  
     2   NAME_CONTRACT_TYPE           307511 non-null  object 
     3   CODE_GENDER                  307511 non-null  object 
     4   FLAG_OWN_CAR                 307511 non-null  int64  
     5   FLAG_OWN_REALTY              307511 non-null  int64  
     6   CNT_CHILDREN                 307511 non-null  int64  
     7   AMT_INCOME_TOTAL             307511 non-null  float64
     8   AMT_CREDIT                   307511 non-null  float64
     9   AMT_ANNUITY                  307499 non-null  float64
     10  AMT_GOODS_PRICE              307233 non-null  float64
     11  NAME_TYPE_SUITE              306219 non-null  object 
     12  NAME_INCOME_TYPE             307511 non-null  object 
     13  NAME_EDUCATION_TYPE          307511 non-null  object 
     14  NAME_FAMILY_STATUS           307511 non-null  object 
     15  NAME_HOUSING_TYPE            307511 non-null  object 
     16  REGION_POPULATION_RELATIVE   307511 non-null  float64
     17  AGE                          307511 non-null  float64
     18  DAYS_EMPLOYED                307511 non-null  int64  
     19  DAYS_REGISTRATION            307511 non-null  int64  
     20  DAYS_ID_PUBLISH              307511 non-null  int64  
     21  OCCUPATION_TYPE              307511 non-null  object 
     22  CNT_FAM_MEMBERS              307511 non-null  int64  
     23  REGION_RATING_CLIENT         307511 non-null  int64  
     24  REGION_RATING_CLIENT_W_CITY  307511 non-null  int64  
     25  WEEKDAY_APPR_PROCESS_START   307511 non-null  object 
     26  HOUR_APPR_PROCESS_START      307511 non-null  int64  
     27  REG_REGION_NOT_LIVE_REGION   307511 non-null  int64  
     28  REG_REGION_NOT_WORK_REGION   307511 non-null  int64  
     29  LIVE_REGION_NOT_WORK_REGION  307511 non-null  int64  
     30  REG_CITY_NOT_LIVE_CITY       307511 non-null  int64  
     31  REG_CITY_NOT_WORK_CITY       307511 non-null  int64  
     32  LIVE_CITY_NOT_WORK_CITY      307511 non-null  int64  
     33  ORGANIZATION_TYPE            307511 non-null  object 
     34  OBS_30_CNT_SOCIAL_CIRCLE     307511 non-null  int64  
     35  DEF_30_CNT_SOCIAL_CIRCLE     307511 non-null  int64  
     36  OBS_60_CNT_SOCIAL_CIRCLE     307511 non-null  int64  
     37  DEF_60_CNT_SOCIAL_CIRCLE     307511 non-null  int64  
     38  DAYS_LAST_PHONE_CHANGE       307510 non-null  float64
     39  FLAG_DOCUMENT_3              307511 non-null  int64  
     40  AMT_REQ_CREDIT_BUREAU_HOUR   265992 non-null  float64
     41  AMT_REQ_CREDIT_BUREAU_DAY    265992 non-null  float64
     42  AMT_REQ_CREDIT_BUREAU_WEEK   265992 non-null  float64
     43  AMT_REQ_CREDIT_BUREAU_MON    265992 non-null  float64
     44  AMT_REQ_CREDIT_BUREAU_QRT    265992 non-null  float64
     45  AMT_REQ_CREDIT_BUREAU_YEAR   265992 non-null  float64
    dtypes: float64(13), int64(23), object(10)
    memory usage: 107.9+ MB


#### Insight
After deleting unnecessary columns, there are 46 columns remaining in df.

### Sourcing and Processing the "previous_application.csv" dataset


```python
prev_df = pd.read_csv("previous_application.csv")
```


```python
missing_prev_df = describe_missing_zeros_values(prev_df)
display(missing_prev_df)
```

    Your selected dataframe has 1670214 rows 37 columns.
    There are 16 columns that have missing values.



<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Zero Values</th>
      <th>Missing Values</th>
      <th>% Missing Values</th>
      <th>Total Zero &amp; Missing Values</th>
      <th>% Total Zero &amp; Missing Values</th>
      <th>Data Type</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>RATE_INTEREST_PRIMARY</th>
      <td>0</td>
      <td>1664263</td>
      <td>99.6</td>
      <td>1664263</td>
      <td>99.6</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>RATE_INTEREST_PRIVILEGED</th>
      <td>0</td>
      <td>1664263</td>
      <td>99.6</td>
      <td>1664263</td>
      <td>99.6</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>AMT_DOWN_PAYMENT</th>
      <td>369854</td>
      <td>895844</td>
      <td>53.6</td>
      <td>1265698</td>
      <td>75.8</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>RATE_DOWN_PAYMENT</th>
      <td>369854</td>
      <td>895844</td>
      <td>53.6</td>
      <td>1265698</td>
      <td>75.8</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>NAME_TYPE_SUITE</th>
      <td>0</td>
      <td>820405</td>
      <td>49.1</td>
      <td>820405</td>
      <td>49.1</td>
      <td>object</td>
    </tr>
    <tr>
      <th>DAYS_FIRST_DRAWING</th>
      <td>0</td>
      <td>673065</td>
      <td>40.3</td>
      <td>673065</td>
      <td>40.3</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>DAYS_FIRST_DUE</th>
      <td>0</td>
      <td>673065</td>
      <td>40.3</td>
      <td>673065</td>
      <td>40.3</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>DAYS_LAST_DUE_1ST_VERSION</th>
      <td>705</td>
      <td>673065</td>
      <td>40.3</td>
      <td>673770</td>
      <td>40.3</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>DAYS_LAST_DUE</th>
      <td>0</td>
      <td>673065</td>
      <td>40.3</td>
      <td>673065</td>
      <td>40.3</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>DAYS_TERMINATION</th>
      <td>0</td>
      <td>673065</td>
      <td>40.3</td>
      <td>673065</td>
      <td>40.3</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>NFLAG_INSURED_ON_APPROVAL</th>
      <td>665527</td>
      <td>673065</td>
      <td>40.3</td>
      <td>1338592</td>
      <td>80.1</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>AMT_GOODS_PRICE</th>
      <td>6869</td>
      <td>385515</td>
      <td>23.1</td>
      <td>392384</td>
      <td>23.5</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>AMT_ANNUITY</th>
      <td>1637</td>
      <td>372235</td>
      <td>22.3</td>
      <td>373872</td>
      <td>22.4</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>CNT_PAYMENT</th>
      <td>144985</td>
      <td>372230</td>
      <td>22.3</td>
      <td>517215</td>
      <td>31.0</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>PRODUCT_COMBINATION</th>
      <td>0</td>
      <td>346</td>
      <td>0.0</td>
      <td>346</td>
      <td>0.0</td>
      <td>object</td>
    </tr>
    <tr>
      <th>AMT_CREDIT</th>
      <td>336768</td>
      <td>1</td>
      <td>0.0</td>
      <td>336769</td>
      <td>20.2</td>
      <td>float64</td>
    </tr>
  </tbody>
</table>
</div>


There are many columns in previous application dataframe where missing value is more than 40%. Let's plot the columns vs missing value % with 40% being the cut-off marks

#### Insights
From the plot we can see the columns in which percentage of null values more than 40% are marked above the red line and the columns which have less than 40 % null values below the red line. Let's check the columns which has more than 40% missing values

### Data Binning

#### Binning "AMT_INCOME_TOTAL" to 5 bins ["VeryLow", "Low", "Medium", "High", "VeryHigh"]



```python
# Using qcut to get relatively equally proportioned bins
# Binning Numerical Columns to create a categorical column

# Creating bins for income amount
df['AMT_INCOME_TOTAL']=df['AMT_INCOME_TOTAL']/100000

bins = [0,1,2,3,4,5,6,7,8,9,10,11]
slot = ['Below 100K','100K-200K', '200K-300K','300K-400K','400K-500K','500K-600K','600K-700K','700K-800K','800K-900K','900K-1M', 'Above 1M']

df['AMT_INCOME_RANGE'] = pd.cut(df['AMT_INCOME_TOTAL'],
                                bins,
                                labels=slot)

df.AMT_INCOME_RANGE.value_counts(normalize = True) * 100
```




    100K-200K     50.735000
    200K-300K     21.210691
    Below 100K    20.729695
    300K-400K      4.776116
    400K-500K      1.744669
    500K-600K      0.356354
    600K-700K      0.282805
    800K-900K      0.096980
    700K-800K      0.052721
    900K-1M        0.009112
    Above 1M       0.005858
    Name: AMT_INCOME_RANGE, dtype: float64



#### Insight
More than 50% loan applicants have income amount in the range of 100K-200K. Almost 92% loan applicants have income less than 300K

### Binning "AGE" to 5 equally spaced bins


```python
# Creating bins for Age
bins = [0,20,30,40,50,100]
slots = ['0-20','20-30','30-40','40-50','Above 50']

df['AGE_GROUP'] = pd.cut(df['AGE'],
                         bins=bins,
                         labels=slots)
df.AGE_GROUP.value_counts(normalize = True) * 100
```




    Above 50    33.623187
    30-40       26.779205
    40-50       24.903499
    20-30       14.694109
    0-20         0.000000
    Name: AGE_GROUP, dtype: float64



#### Insight
- 33% loan applicants have age above 50 years. 
- More than 55% of loan applicants have age over 40 years.


```python
# Creating bins for Credit amount
df['AMT_CREDIT'] = df['AMT_CREDIT']/100000

bins = [0,1,2,3,4,5,6,7,8,9,10,100]
slots = ['Below 100K', '100K-200K', '200K-300K', '300K-400K',
         '400K-500K', '500K-600K', '600K-700K', '700K-800K',
         '800K-900K', '900K-1M', 'Above 1M']

df['AMT_CREDIT_RANGE'] = pd.cut(df['AMT_CREDIT'],
                                bins=bins,
                                labels=slots)
```


```python
df.AMT_CREDIT_RANGE.value_counts(normalize=True)*100
```




    200K-300K     17.824728
    Above 1M      16.254703
    500K-600K     11.131960
    400K-500K     10.418489
    100K-200K      9.801275
    300K-400K      8.564897
    600K-700K      7.820533
    800K-900K      7.086576
    700K-800K      6.241403
    900K-1M        2.902986
    Below 100K     1.952450
    Name: AMT_CREDIT_RANGE, dtype: float64



#### Insight
About 16% loan applicants have taken loan which amounts to more than 1M.


```python
# Creating bins for Employement Time
df['YEARS_EMPLOYED'] = df['DAYS_EMPLOYED'] // 365
bins = [0,5,10,20,30,40,50,60,150]
slots = ['0-5', '5-10', '10-20', '20-30',
         '30-40', '40-50', '50-60', 'Above 60']

df['EMPLOYMENT_YEAR_RANGE'] = pd.cut(df['YEARS_EMPLOYED'],
                                     bins=bins,
                                     labels=slots)

#checking the binning of data and % of data in each category
df.EMPLOYMENT_YEAR_RANGE.value_counts(normalize=True)*100
```




    0-5         55.582363
    5-10        24.966441
    10-20       14.564315
    20-30        3.750117
    30-40        1.058720
    40-50        0.078044
    50-60        0.000000
    Above 60     0.000000
    Name: EMPLOYMENT_YEAR_RANGE, dtype: float64



#### Insight
- More than 55% of the loan applicants have work experience within 0-5 years.
- Almost 80% of them have less than 10 years of work experience

### Checking for Outliers

#### Outliers in application data dataframe


```python
plt.figure(figsize=(30,15))

app_outlier_col_1 = ['AMT_ANNUITY','AMT_INCOME_TOTAL','AMT_CREDIT','AMT_GOODS_PRICE','DAYS_EMPLOYED']
app_outlier_col_2 = ['CNT_CHILDREN','AGE']
for i in enumerate(app_outlier_col_1):
    plt.subplot(2,4,i[0]+1)
    sns.boxplot(y=df[i[1]])
    plt.title(i[1])
    plt.ylabel("")

for i in enumerate(app_outlier_col_2):
    plt.subplot(2,4,i[0]+6)
    sns.boxplot(y=df[i[1]])
    plt.title(i[1])
    plt.ylabel("")
```


    
![png](output_69_0.png)
    


#### Insight
- It can be seen that in current application data
- AMT_ANNUITY, AMT_CREDIT, AMT_GOODS_PRICE,CNT_CHILDREN have some number of outliers.
- AMT_INCOME_TOTAL has huge number of outliers which indicate that few of the loan applicants have high income when compared to the others.
- AGE has no outliers which means the data available is reliable.
- DAYS_EMPLOYED has outlier values around 350000(days) which is around 958 years which is impossible and hence this has to be incorrect entry.

#### Outliers in previous application dataframe


```python
plt.figure(figsize=(30,15))

prev_outlier_col_1 = ['AMT_ANNUITY','AMT_APPLICATION','AMT_CREDIT','AMT_GOODS_PRICE','SELLERPLACE_AREA']
prev_outlier_col_2 = ['SK_ID_CURR','DAYS_DECISION','CNT_PAYMENT']
for i in enumerate(prev_outlier_col_1):
    plt.subplot(2,4,i[0]+1)
    sns.boxplot(y=prev_df[i[1]])
    plt.title(i[1])
    plt.ylabel("")

for i in enumerate(prev_outlier_col_2):
    plt.subplot(2,4,i[0]+6)
    sns.boxplot(y=prev_df[i[1]])
    plt.title(i[1])
    plt.ylabel("") 
```


    
![png](output_72_0.png)
    


#### Insight 
It can be seen that in previous application data
- AMT_ANNUITY, AMT_APPLICATION, AMT_CREDIT, AMT_GOODS_PRICE, SELLERPLACE_AREA have huge number of outliers.
- CNT_PAYMENT has few outlier values.
- SK_ID_CURR is an ID column and hence no outliers.
- DAYS_DECISION has little number of outliers indicating that these previous applications decisions were taken long back.

### Adding New Features
    Adding new features based on exisitng features

#### Credit Ratios


```python
df["CREDIT_TO_ANNUITY_RATIO"] = df["AMT_CREDIT"] / df["AMT_ANNUITY"]
df["CREDIT_TO_GOODS_RATIO"] = df["AMT_CREDIT"] / df["AMT_GOODS_PRICE"]
```

#### Income Ratios


```python
df["ANNUITY_TO_INCOME_RATIO"] = df["AMT_ANNUITY"] / df["AMT_INCOME_TOTAL"]
df["CREDIT_TO_INCOME_RATIO"] = df["AMT_CREDIT"] / df["AMT_INCOME_TOTAL"]
df["INCOME_TO_EMPLOYED_RATIO"] = df["AMT_INCOME_TOTAL"] / df["DAYS_EMPLOYED"]
```

## Data Analysis

### Strategy
The data analysis flow has been planned in following way :
- Imbalance in Data
- Categorical Data Analysis
    - Categorical segmented Univariate Analysis
    - Categorical Bi/Multivariate analysis
- Numeric Data Analysis
    - Bi-furcation of databased based on TARGET data
    - Correlation Matrix
    - Numerical segmented Univariate Analysis
    - Numerical Bi/Multivariate analysis

### Plotting Functions


```python
def plot_box(data_series):
    """Plotting box plots
    
    Args:
        data_series (pd.core.series.Series): Data series to be plotted
    """
    plt.figure(figsize = (20,1))
    sns.boxplot(data_series)
    plt.show()
```


```python
# Function for plotting repetitive countplots in univariate categorical analysis on applicationDF
# This function will create two subplots: 
# 1. Count plot of categorical column w.r.t TARGET; 
# 2. Percentage of defaulters within column

def univariate_categorical(feature, ylog=False, label_rotation=False, horizontal_layout=True):
    temp = df[feature].value_counts()
    df1 = pd.DataFrame({feature: temp.index,'Number of contracts': temp.values})

    # Calculate the percentage of target=1 per category value
    cat_perc = df[[feature, 'TARGET']].groupby([feature],as_index=False).mean()
    cat_perc["TARGET"] = cat_perc["TARGET"]*100
    cat_perc.sort_values(by='TARGET', ascending=False, inplace=True)
    
    if(horizontal_layout):
        fig, (ax1, ax2) = plt.subplots(ncols=2, figsize=(12,6))
    else:
        fig, (ax1, ax2) = plt.subplots(nrows=2, figsize=(20,24))
        
    # 1. Subplot 1: Count plot of categorical column
    # sns.set_palette("Set2")
    s = sns.countplot(ax=ax1, 
                    x = feature, 
                    data=df,
                    hue ="TARGET",
                    order=cat_perc[feature],
                    palette=['g','r'])
    
    # Define common styling
    ax1.set_title(feature, fontdict={'fontsize' : 10, 'fontweight' : 3, 'color' : 'Blue'}) 
    ax1.legend(['Non-Defaulter','Defaulter'])
    
    # If the plot is not readable, use the log scale.
    if ylog:
        ax1.set_yscale('log')
        ax1.set_ylabel("Count (log)",fontdict={'fontsize' : 10, 'fontweight' : 3, 'color' : 'Blue'})   
    
    
    if(label_rotation):
        s.set_xticklabels(s.get_xticklabels(),rotation=90)
    
    # 2. Subplot 2: Percentage of defaulters within the categorical column
    s = sns.barplot(ax=ax2, 
                    x = feature, 
                    y='TARGET', 
                    order=cat_perc[feature], 
                    data=cat_perc,
                    palette='Set2')
    
    if(label_rotation):
        s.set_xticklabels(s.get_xticklabels(),rotation=90)
    plt.ylabel('Percent of Defaulters [%]', fontsize=10)
    plt.tick_params(axis='both', which='major', labelsize=10)
    ax2.set_title(feature + " Defaulter %", fontdict={'fontsize' : 15, 'fontweight' : 5, 'color' : 'Blue'}) 

    plt.show();
```


```python
# function for plotting repetitive countplots in bivariate categorical analysis

def bivariate_bar(x, y, df, hue, figsize):
    
    plt.figure(figsize=figsize)
    sns.barplot(x=x,
                y=y,
                data=df, 
                hue=hue, 
                palette =['g','r'])     
        
    # Defining aesthetics of Labels and Title of the plot using style dictionaries
    plt.xlabel(x,fontdict={'fontsize' : 10, 'fontweight' : 3, 'color' : 'Blue'})    
    plt.ylabel(y,fontdict={'fontsize' : 10, 'fontweight' : 3, 'color' : 'Blue'})    
    plt.title(f"{x} vs {y}", fontdict={'fontsize' : 15, 'fontweight' : 5, 'color' : 'Blue'}) 
    plt.xticks(rotation=90, ha='right')
    plt.legend(labels = ['Non-Defaulter','Defaulter'])
    plt.show()
```


```python
# Function for plotting repetitive rel plots in bivaritae numerical analysis on applicationDF

def bivariate_rel(x, y, data, hue, kind, palette, legend, figsize):
    
    plt.figure(figsize=figsize)
    sns.relplot(x=x, 
                y=y, 
                data=df, 
                hue="TARGET",
                kind=kind,
                palette = ['g','r'],
                legend = False)
    plt.legend(['Repayer','Defaulter'])
    plt.xticks(rotation=90, ha='right')
    plt.show()
```


```python
# Function for plotting repetitive countplots in univariate categorical analysis on the merged df

def univariate_merged(col, df, hue, palette, ylog, figsize):
    plt.figure(figsize=figsize)
    ax=sns.countplot(x=col, 
                  data=df,
                  hue= hue,
                  palette= palette,
                  order=df[col].value_counts().index)
    

    if ylog:
        plt.yscale('log')
        plt.ylabel("Count (log)",fontdict={'fontsize' : 10, 'fontweight' : 3, 'color' : 'Blue'})     
    else:
        plt.ylabel("Count",fontdict={'fontsize' : 10, 'fontweight' : 3, 'color' : 'Blue'})       

    plt.title(col , fontdict={'fontsize' : 15, 'fontweight' : 5, 'color' : 'Blue'}) 
    plt.legend(loc = "upper right")
    plt.xticks(rotation=90, ha='right')
    
    plt.show()
```


```python
# Function to plot point plots on merged dataframe

def merged_pointplot(x,y):
    plt.figure(figsize=(8,4))
    sns.pointplot(x=x, 
                  y=y, 
                  hue="TARGET", 
                  data=loan_process_df,
                  palette =['g','r'])
```

### Data Imablance


```python
imbalance = df["TARGET"].value_counts().reset_index()

plt.figure(figsize=(10,4))
x= ['Non-Defaulter','Defaulter']
sns.barplot(x,
            "TARGET",
            data = imbalance,
            palette = ['g','r'])
plt.xlabel("Loan Repayment Status")
plt.ylabel("Count of Repayers & Defaulters")
plt.title("Imbalance Plotting")
plt.show()
```


    
![png](output_89_0.png)
    


#### Checking for Outliers in "AMT_INCOME_TOTAL"


```python
plot_box(df.AMT_INCOME_TOTAL)
```


    
![png](output_91_0.png)
    


- As we can see above there is atleast one significant outlier for "AMT_INCOME_TOTAL" which is a very important field to focus on.
- It would be better if these outliers are not taken into account during our analysis as it would skew the data towards the right.


```python
plot_box(df[df.AMT_INCOME_TOTAL < df.AMT_INCOME_TOTAL.quantile(0.99)].AMT_INCOME_TOTAL)
```


    
![png](output_93_0.png)
    



```python
plot_box(df[df.AMT_INCOME_TOTAL < df.AMT_INCOME_TOTAL.quantile(0.95)].AMT_INCOME_TOTAL)
```


    
![png](output_94_0.png)
    



```python
# Using data upto 95th quantile of the column to
df = df[df.AMT_INCOME_TOTAL < df.AMT_INCOME_TOTAL.quantile(0.95)]
plot_box(df.AMT_INCOME_TOTAL)
```


    
![png](output_95_0.png)
    


#### Checking for Outliers in "DAYS_EMPLOYED"


```python
# DAYS_EMPLOYED provided in current application
plot_box(df.DAYS_EMPLOYED)
```


    
![png](output_97_0.png)
    


- Atleast one signigicant Outlier present
- Removing those and plotting again.....


```python
plot_box(df[df.DAYS_EMPLOYED < df.DAYS_EMPLOYED.quantile(0.95)].DAYS_EMPLOYED)
```


    
![png](output_99_0.png)
    



```python
# Using data upto 95th quantile of the column and replotting
df = df[df.DAYS_EMPLOYED < df.DAYS_EMPLOYED.quantile(0.95)]
plot_box(df.DAYS_EMPLOYED)
```


    
![png](output_100_0.png)
    



```python

```

### Univariate Analysis


```python
# Checking the contract type based on loan repayment status
univariate_categorical('NAME_CONTRACT_TYPE', True)
```


    
![png](output_103_0.png)
    


#### Insight
- Contract type: Revolving loans are just a small fraction (10%) from the total number of loans.
- In the same time, a larger amount of Revolving loans, comparing with their frequency, are not repaid.


```python
# Checking the type of Gender on loan repayment status
univariate_categorical('CODE_GENDER')
```


    
![png](output_105_0.png)
    


#### Insight
- The number of female clients is almost double the number of male clients. 
- Based on the percentage of defaulted credits, males have a higher chance of not returning their loans (approx 10%), comparing with women (approx 7%)


```python
# Checking if owning a car is related to loan repayment status
univariate_categorical('FLAG_OWN_CAR')
```


    
![png](output_107_0.png)
    


#### Insight
- Clients who own a car are half in number of the clients who dont own a car.
- But based on the percentage of deault, there is no correlation between owning a car and loan repayment as in both cases the default percentage is almost same.


```python
# Checking if owning a realty is related to loan repayment status
univariate_categorical('FLAG_OWN_REALTY')
```


    
![png](output_109_0.png)
    


#### Insight
- The clients who own real estate are more than double of the ones that don't own. 
- But the defaulting rate of both categories are around the same (approx 8%). Thus there is no correlation between owning a reality and defaulting the loan.


```python
# Analyzing Housing Type based on loan repayment status
univariate_categorical("NAME_HOUSING_TYPE", True, True, True)
```


    
![png](output_111_0.png)
    


#### Insight
- Majority of people live in House/apartment
- People living in office apartments have lowest default rate
- People living with parents (approx 11.5%) and living in rented apartments(>12%) have higher probability of defaultin


```python
# Analyzing Family status based on loan repayment status
univariate_categorical("NAME_FAMILY_STATUS", False, True, True)
```


    
![png](output_113_0.png)
    


#### Insight
- Most of the people who have taken loan are married, followed by Single/not married and civil marriage.
- In terms of percentage of not repayment of loan, Civil marriage has the highest percent of not repayment (10%), with Widow the lowest (exception being Unknown).


```python
# Analyzing Education Type based on loan repayment status
univariate_categorical("NAME_EDUCATION_TYPE", True, True, True)
```


    
![png](output_115_0.png)
    


#### Insight
- Majority of the clients have Secondary / secondary special education, followed by clients with Higher education. Only a very small number having an academic degree
- The Lower secondary category, although rare, have the largest rate of not returning the loan (11%). The people with Academic degree have less than 2% defaulting rate.


```python
# Analyzing Income Type based on loan repayment status
univariate_categorical("NAME_INCOME_TYPE", True, True, False)
```


    
![png](output_117_0.png)
    


#### Insight
- Most of applicants for loans have income type as Working, followed by Commercial associate, Pensioner and State servant.
- The applicants with the type of income Maternity leave have almost 40% ratio of not returning loans, followed by Unemployed (37%). The rest of types of incomes are under the average of 10% for not returning loans.
- Student and Businessmen, though less in numbers do not have any default record. Thus these two category are safest for providing loan.


```python
# Analyzing Region rating where applicant lives based on loan repayment status
univariate_categorical("REGION_RATING_CLIENT", False, False, True)
```


    
![png](output_119_0.png)
    


#### Insight
- Most of the applicants are living in Region_Rating 2 place.
- Region Rating 3 has the highest default rate (11%).
- Applicant living in Region_Rating 1 has the lowest probability of defaulting, thus safer for approving loans.


```python
# Analyzing Occupation Type where applicant lives based on loan repayment status
univariate_categorical("OCCUPATION_TYPE", False, True, False)
```


    
![png](output_121_0.png)
    


#### Insight
- Most of the loans are taken by Laborers, followed by Sales staff. IT staff take the lowest amount of loans.
- The category with highest percent of not repaid loans are Low-skill Laborers (above 17%), followed by Drivers and Waiters/barmen staff, Security staff, Laborers and Cooking staff.


```python
# Checking Loan repayment status based on Organization type
univariate_categorical("ORGANIZATION_TYPE", True, True, False)
```


    
![png](output_123_0.png)
    


#### Insight
- Organizations with highest percent of loans not repaid are Transport: type 3 (16%), Industry: type 13 (13.5%), Industry: type 8 (12.5%) and Restaurant (less than 12%). Self employed people have relative high defaulting rate, and thus should be avoided to be approved for loan or provide loan with higher interest rate to mitigate the risk of defaulting.
- Most of the people application for loan are from Business Entity Type 3
- For a very high number of applications, Organization type information is unavailable(XNA)


It can be seen that following category of organization type has lesser defaulters thus safer for providing loans:
- Trade Type 4 and 5
- Industry type 8


```python
# Analyzing Flag_Doc_3 submission status based on loan repayment status
univariate_categorical("FLAG_DOCUMENT_3", False, False, True)
```


    
![png](output_125_0.png)
    


#### Insight
There is no significant correlation between repayers and defaulters in terms of submitting document 3 as we see even if applicants have submitted the document, they have defaulted a slightly more (~9%) than who have not submitted the document (6%)


```python
# Analyzing Age Group based on loan repayment status
univariate_categorical("AGE_GROUP", False, False, True)
```


    
![png](output_127_0.png)
    


#### Insight
- People in the age group range 20-40 have higher probability of defaulting
- People above age of 50 have low probability of defailting


```python
# Analyzing Employment_Year_Range based on loan repayment status
univariate_categorical("EMPLOYMENT_YEAR_RANGE", False, False, False)
```


    
![png](output_129_0.png)
    


#### Insight
- Majority of the applicants have been employeed in between 0-5 years. The defaulting rating of this group is also the highest which is 10%
- With increase of employment year, defaulting rate is gradually decreasing with people having 40+ year experience having less than 1% default rate


```python
# Analyzing Amount_Credit based on loan repayment status
univariate_categorical("AMT_CREDIT_RANGE", False, False, False)
```


    
![png](output_131_0.png)
    


#### Insight
- More than 80% of the loan provided are for amount less than 900,000
- People who get loan for 200-600k tend to default more than others.


```python
# Analyzing Amount_Income Range based on loan repayment status
univariate_categorical("AMT_INCOME_RANGE", False, False, False)
```


    
![png](output_133_0.png)
    


#### Insight
- 90% of the applications have Income total less than 300,000.
- Application with Income less than 300,000 has high probability of defaulting.
- Applicant with Income more than 700,000 are less likely to default.


```python
# Analyzing Number of children based on loan repayment status
univariate_categorical("CNT_CHILDREN", True)
```


    
![png](output_135_0.png)
    


#### Insight
- Most of the applicants do not have children
- Very few clients have more than 3 children.
- Client who have more than 4 children has a very high default rate with child count 9 and 11 showing 100% default rate.


```python
# Analyzing Number of family members based on loan repayment status
univariate_categorical("CNT_FAM_MEMBERS", True, False, False)
```


    
![png](output_137_0.png)
    


#### Insight
Family member follows the same trend as children where having more family members increases the risk of defaulting

### Bi/Multivariate Analysis


```python
df.groupby('NAME_INCOME_TYPE')['AMT_INCOME_TOTAL'].describe()
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>count</th>
      <th>mean</th>
      <th>std</th>
      <th>min</th>
      <th>25%</th>
      <th>50%</th>
      <th>75%</th>
      <th>max</th>
    </tr>
    <tr>
      <th>NAME_INCOME_TYPE</th>
      <th></th>
      <th></th>
      <th></th>
      <th></th>
      <th></th>
      <th></th>
      <th></th>
      <th></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>Businessman</th>
      <td>4.0</td>
      <td>2.025000</td>
      <td>0.259808</td>
      <td>1.8000</td>
      <td>1.800000</td>
      <td>2.0250</td>
      <td>2.25000</td>
      <td>2.250000</td>
    </tr>
    <tr>
      <th>Commercial associate</th>
      <td>64450.0</td>
      <td>1.736543</td>
      <td>0.630424</td>
      <td>0.2655</td>
      <td>1.260000</td>
      <td>1.6200</td>
      <td>2.25000</td>
      <td>3.370500</td>
    </tr>
    <tr>
      <th>Maternity leave</th>
      <td>4.0</td>
      <td>0.855000</td>
      <td>0.369256</td>
      <td>0.4950</td>
      <td>0.630000</td>
      <td>0.7875</td>
      <td>1.01250</td>
      <td>1.350000</td>
    </tr>
    <tr>
      <th>Pensioner</th>
      <td>10.0</td>
      <td>1.109250</td>
      <td>0.352747</td>
      <td>0.6750</td>
      <td>0.815625</td>
      <td>0.9900</td>
      <td>1.45125</td>
      <td>1.575000</td>
    </tr>
    <tr>
      <th>State servant</th>
      <td>20299.0</td>
      <td>1.621083</td>
      <td>0.646476</td>
      <td>0.2700</td>
      <td>1.125000</td>
      <td>1.5750</td>
      <td>2.02500</td>
      <td>3.368359</td>
    </tr>
    <tr>
      <th>Student</th>
      <td>17.0</td>
      <td>1.474412</td>
      <td>0.437603</td>
      <td>0.8100</td>
      <td>1.125000</td>
      <td>1.5750</td>
      <td>1.75500</td>
      <td>2.250000</td>
    </tr>
    <tr>
      <th>Working</th>
      <td>152768.0</td>
      <td>1.516020</td>
      <td>0.600069</td>
      <td>0.2565</td>
      <td>1.125000</td>
      <td>1.3500</td>
      <td>1.80000</td>
      <td>3.330000</td>
    </tr>
  </tbody>
</table>
</div>




```python
# Income type vs Income Amount Range
bivariate_bar("NAME_INCOME_TYPE",
              "AMT_INCOME_TOTAL",
              df,
              "TARGET",
              (20,10))
```


    
![png](output_141_0.png)
    


#### Insight
It can be seen that business man's income is the highest and the estimated range with default 95% confidence level seem to indicate that the income of a business man could be in the range of slightly close to 400K and slightly above 1M

### Numerical Analysis


```python
# Bifurcating the applicationDF dataframe based on Target value 0 and 1 for correlation and other analysis
cols_for_correlation = ['NAME_CONTRACT_TYPE', 'CODE_GENDER', 'FLAG_OWN_CAR', 
                        'FLAG_OWN_REALTY', 'CNT_CHILDREN', 'AMT_INCOME_TOTAL', 
                        'AMT_CREDIT', 'AMT_ANNUITY', 'AMT_GOODS_PRICE', 
                        'NAME_TYPE_SUITE', 'NAME_INCOME_TYPE', 'NAME_EDUCATION_TYPE', 
                        'NAME_FAMILY_STATUS', 'NAME_HOUSING_TYPE', 
                        'REGION_POPULATION_RELATIVE', 'AGE', 'DAYS_EMPLOYED', 
                        'DAYS_REGISTRATION', 'DAYS_ID_PUBLISH', 'OCCUPATION_TYPE', 
                        'CNT_FAM_MEMBERS', 'REGION_RATING_CLIENT', 
                        'REGION_RATING_CLIENT_W_CITY', 'WEEKDAY_APPR_PROCESS_START', 
                        'HOUR_APPR_PROCESS_START', 'REG_REGION_NOT_LIVE_REGION', 
                        'REG_REGION_NOT_WORK_REGION', 'LIVE_REGION_NOT_WORK_REGION', 
                        'REG_CITY_NOT_LIVE_CITY', 'REG_CITY_NOT_WORK_CITY', 
                        'LIVE_CITY_NOT_WORK_CITY', 'ORGANIZATION_TYPE',
                        'OBS_60_CNT_SOCIAL_CIRCLE', 'DEF_60_CNT_SOCIAL_CIRCLE', 
                        'DAYS_LAST_PHONE_CHANGE', 'FLAG_DOCUMENT_3', 
                        'AMT_REQ_CREDIT_BUREAU_HOUR', 'AMT_REQ_CREDIT_BUREAU_DAY', 
                        'AMT_REQ_CREDIT_BUREAU_WEEK', 'AMT_REQ_CREDIT_BUREAU_MON', 
                        'AMT_REQ_CREDIT_BUREAU_QRT', 'AMT_REQ_CREDIT_BUREAU_YEAR']


non_defaulter_df = df.loc[df['TARGET']==0, cols_for_correlation] # Repayers
defaulter_df = df.loc[df['TARGET']==1, cols_for_correlation] # Defaulters
```

#### Correlation between numeric variable


```python
# Getting the top 10 correlation for the Non-Defaulter data
corr_non_defaulter = non_defaulter_df.corr()
corr_non_defaulter = corr_non_defaulter.where(np.triu(np.ones(corr_non_defaulter.shape),k=1).astype(np.bool))

corr_non_defaulter_df = corr_non_defaulter.unstack().reset_index()
corr_non_defaulter_df.columns =['VAR1','VAR2','Correlation']
corr_non_defaulter_df.dropna(subset = ["Correlation"], inplace = True)
corr_non_defaulter_df["Correlation"] = corr_non_defaulter_df["Correlation"].abs() 
corr_non_defaulter_df.sort_values(by='Correlation', ascending=False, inplace=True) 
corr_non_defaulter_df.head(10)
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>VAR1</th>
      <th>VAR2</th>
      <th>Correlation</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>196</th>
      <td>AMT_GOODS_PRICE</td>
      <td>AMT_CREDIT</td>
      <td>0.985932</td>
    </tr>
    <tr>
      <th>461</th>
      <td>REGION_RATING_CLIENT_W_CITY</td>
      <td>REGION_RATING_CLIENT</td>
      <td>0.949858</td>
    </tr>
    <tr>
      <th>386</th>
      <td>CNT_FAM_MEMBERS</td>
      <td>CNT_CHILDREN</td>
      <td>0.892843</td>
    </tr>
    <tr>
      <th>593</th>
      <td>LIVE_REGION_NOT_WORK_REGION</td>
      <td>REG_REGION_NOT_WORK_REGION</td>
      <td>0.859793</td>
    </tr>
    <tr>
      <th>692</th>
      <td>LIVE_CITY_NOT_WORK_CITY</td>
      <td>REG_CITY_NOT_WORK_CITY</td>
      <td>0.819810</td>
    </tr>
    <tr>
      <th>197</th>
      <td>AMT_GOODS_PRICE</td>
      <td>AMT_ANNUITY</td>
      <td>0.768070</td>
    </tr>
    <tr>
      <th>164</th>
      <td>AMT_ANNUITY</td>
      <td>AMT_CREDIT</td>
      <td>0.766395</td>
    </tr>
    <tr>
      <th>423</th>
      <td>REGION_RATING_CLIENT</td>
      <td>REGION_POPULATION_RELATIVE</td>
      <td>0.512627</td>
    </tr>
    <tr>
      <th>455</th>
      <td>REGION_RATING_CLIENT_W_CITY</td>
      <td>REGION_POPULATION_RELATIVE</td>
      <td>0.511242</td>
    </tr>
    <tr>
      <th>560</th>
      <td>REG_REGION_NOT_WORK_REGION</td>
      <td>REG_REGION_NOT_LIVE_REGION</td>
      <td>0.467645</td>
    </tr>
  </tbody>
</table>
</div>




```python
fig = plt.figure(figsize=(12,12))
ax = sns.heatmap(non_defaulter_df.corr(), cmap="RdYlGn",annot=False,linewidth =1)
```


    
![png](output_147_0.png)
    


#### Insight
- Correlating factors amongst Non-Defaulters.
- Credit amount is highly correlated with:
    - amount of goods price
    - loan annuity
    - total income

We can also see that Non-Defaulters have high correlation in number of days employed.


```python
# Getting the top 10 correlation for the Defaulter data
corr_defaulter = defaulter_df.corr()
corr_defaulter = corr_defaulter.where(np.triu(np.ones(corr_defaulter.shape),k=1).astype(np.bool))
corr_defaulter_df = corr_defaulter.unstack().reset_index()
corr_defaulter_df.columns =['VAR1','VAR2','Correlation']
corr_defaulter_df.dropna(subset = ["Correlation"], inplace = True)
corr_defaulter_df["Correlation"] = corr_defaulter_df["Correlation"].abs()
corr_defaulter_df.sort_values(by='Correlation', ascending=False, inplace=True)
corr_defaulter_df.head(10)
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>VAR1</th>
      <th>VAR2</th>
      <th>Correlation</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>196</th>
      <td>AMT_GOODS_PRICE</td>
      <td>AMT_CREDIT</td>
      <td>0.981925</td>
    </tr>
    <tr>
      <th>461</th>
      <td>REGION_RATING_CLIENT_W_CITY</td>
      <td>REGION_RATING_CLIENT</td>
      <td>0.958070</td>
    </tr>
    <tr>
      <th>386</th>
      <td>CNT_FAM_MEMBERS</td>
      <td>CNT_CHILDREN</td>
      <td>0.893615</td>
    </tr>
    <tr>
      <th>593</th>
      <td>LIVE_REGION_NOT_WORK_REGION</td>
      <td>REG_REGION_NOT_WORK_REGION</td>
      <td>0.846801</td>
    </tr>
    <tr>
      <th>692</th>
      <td>LIVE_CITY_NOT_WORK_CITY</td>
      <td>REG_CITY_NOT_WORK_CITY</td>
      <td>0.766851</td>
    </tr>
    <tr>
      <th>164</th>
      <td>AMT_ANNUITY</td>
      <td>AMT_CREDIT</td>
      <td>0.747459</td>
    </tr>
    <tr>
      <th>197</th>
      <td>AMT_GOODS_PRICE</td>
      <td>AMT_ANNUITY</td>
      <td>0.747061</td>
    </tr>
    <tr>
      <th>560</th>
      <td>REG_REGION_NOT_WORK_REGION</td>
      <td>REG_REGION_NOT_LIVE_REGION</td>
      <td>0.509471</td>
    </tr>
    <tr>
      <th>659</th>
      <td>REG_CITY_NOT_WORK_CITY</td>
      <td>REG_CITY_NOT_LIVE_CITY</td>
      <td>0.481013</td>
    </tr>
    <tr>
      <th>455</th>
      <td>REGION_RATING_CLIENT_W_CITY</td>
      <td>REGION_POPULATION_RELATIVE</td>
      <td>0.430085</td>
    </tr>
  </tbody>
</table>
</div>




```python
fig = plt.figure(figsize=(12,12))
ax = sns.heatmap(defaulter_df.corr(), cmap="RdYlGn",annot=False,linewidth =1)
```


    
![png](output_150_0.png)
    


#### Insight
- Credit amount is highly correlated with amount of goods price which is same as non-defaulters.
- But the loan annuity correlation with credit amount has slightly reduced in defaulters(0.75) when compared to non-defaulters(0.77)
- We can also see that repayers have high correlation in number of days employed(0.62) when compared to defaulters(0.58).
- There is a severe drop in the correlation between total income of the client and the credit amount(0.038) amongst defaulters whereas it is 0.342 among non-defaulters.
- Days_birth and number of children correlation has reduced to 0.259 in defaulters when compared to 0.337 in non-defaulters.
- There is a slight increase in defaulted to observed count in social circle among defaulters(0.264) when compared to non-defaulters(0.254)

### Processing previous application dataframe

### Analyze & Delete Irrelevant Columns in previous application prev_df


```python
missing_prev_df = describe_missing_zeros_values(prev_df)
display(missing_prev_df)
```

    Your selected dataframe has 1670214 rows 37 columns.
    There are 16 columns that have missing values.



<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Zero Values</th>
      <th>Missing Values</th>
      <th>% Missing Values</th>
      <th>Total Zero &amp; Missing Values</th>
      <th>% Total Zero &amp; Missing Values</th>
      <th>Data Type</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>RATE_INTEREST_PRIMARY</th>
      <td>0</td>
      <td>1664263</td>
      <td>99.6</td>
      <td>1664263</td>
      <td>99.6</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>RATE_INTEREST_PRIVILEGED</th>
      <td>0</td>
      <td>1664263</td>
      <td>99.6</td>
      <td>1664263</td>
      <td>99.6</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>AMT_DOWN_PAYMENT</th>
      <td>369854</td>
      <td>895844</td>
      <td>53.6</td>
      <td>1265698</td>
      <td>75.8</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>RATE_DOWN_PAYMENT</th>
      <td>369854</td>
      <td>895844</td>
      <td>53.6</td>
      <td>1265698</td>
      <td>75.8</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>NAME_TYPE_SUITE</th>
      <td>0</td>
      <td>820405</td>
      <td>49.1</td>
      <td>820405</td>
      <td>49.1</td>
      <td>object</td>
    </tr>
    <tr>
      <th>DAYS_FIRST_DRAWING</th>
      <td>0</td>
      <td>673065</td>
      <td>40.3</td>
      <td>673065</td>
      <td>40.3</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>DAYS_FIRST_DUE</th>
      <td>0</td>
      <td>673065</td>
      <td>40.3</td>
      <td>673065</td>
      <td>40.3</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>DAYS_LAST_DUE_1ST_VERSION</th>
      <td>705</td>
      <td>673065</td>
      <td>40.3</td>
      <td>673770</td>
      <td>40.3</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>DAYS_LAST_DUE</th>
      <td>0</td>
      <td>673065</td>
      <td>40.3</td>
      <td>673065</td>
      <td>40.3</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>DAYS_TERMINATION</th>
      <td>0</td>
      <td>673065</td>
      <td>40.3</td>
      <td>673065</td>
      <td>40.3</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>NFLAG_INSURED_ON_APPROVAL</th>
      <td>665527</td>
      <td>673065</td>
      <td>40.3</td>
      <td>1338592</td>
      <td>80.1</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>AMT_GOODS_PRICE</th>
      <td>6869</td>
      <td>385515</td>
      <td>23.1</td>
      <td>392384</td>
      <td>23.5</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>AMT_ANNUITY</th>
      <td>1637</td>
      <td>372235</td>
      <td>22.3</td>
      <td>373872</td>
      <td>22.4</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>CNT_PAYMENT</th>
      <td>144985</td>
      <td>372230</td>
      <td>22.3</td>
      <td>517215</td>
      <td>31.0</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>PRODUCT_COMBINATION</th>
      <td>0</td>
      <td>346</td>
      <td>0.0</td>
      <td>346</td>
      <td>0.0</td>
      <td>object</td>
    </tr>
    <tr>
      <th>AMT_CREDIT</th>
      <td>336768</td>
      <td>1</td>
      <td>0.0</td>
      <td>336769</td>
      <td>20.2</td>
      <td>float64</td>
    </tr>
  </tbody>
</table>
</div>



```python
fig = plt.figure(figsize=(20,10))
ax = sns.pointplot(x = missing_prev_df.index,
                   y = "% Missing Values",
                   data = missing_prev_df,
                   color = 'blue')
plt.xticks(rotation=90, 
           fontsize =7)
ax.axhline(40, 
           ls ='--', 
           color = 'red')
plt.title("Percentage of Missing values in the previous application data")
plt.ylabel("% Missing Values")
plt.xlabel("Columns")
plt.xticks(fontsize=15, rotation=90)
plt.show()
```


    
![png](output_155_0.png)
    



```python
missing_gt_thresh_prev_df = missing_prev_df[missing_prev_df["% Missing Values"] > threshold_missing_percent]
missing_gt_thresh_prev_df
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Zero Values</th>
      <th>Missing Values</th>
      <th>% Missing Values</th>
      <th>Total Zero &amp; Missing Values</th>
      <th>% Total Zero &amp; Missing Values</th>
      <th>Data Type</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>RATE_INTEREST_PRIMARY</th>
      <td>0</td>
      <td>1664263</td>
      <td>99.6</td>
      <td>1664263</td>
      <td>99.6</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>RATE_INTEREST_PRIVILEGED</th>
      <td>0</td>
      <td>1664263</td>
      <td>99.6</td>
      <td>1664263</td>
      <td>99.6</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>AMT_DOWN_PAYMENT</th>
      <td>369854</td>
      <td>895844</td>
      <td>53.6</td>
      <td>1265698</td>
      <td>75.8</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>RATE_DOWN_PAYMENT</th>
      <td>369854</td>
      <td>895844</td>
      <td>53.6</td>
      <td>1265698</td>
      <td>75.8</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>NAME_TYPE_SUITE</th>
      <td>0</td>
      <td>820405</td>
      <td>49.1</td>
      <td>820405</td>
      <td>49.1</td>
      <td>object</td>
    </tr>
    <tr>
      <th>DAYS_FIRST_DRAWING</th>
      <td>0</td>
      <td>673065</td>
      <td>40.3</td>
      <td>673065</td>
      <td>40.3</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>DAYS_FIRST_DUE</th>
      <td>0</td>
      <td>673065</td>
      <td>40.3</td>
      <td>673065</td>
      <td>40.3</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>DAYS_LAST_DUE_1ST_VERSION</th>
      <td>705</td>
      <td>673065</td>
      <td>40.3</td>
      <td>673770</td>
      <td>40.3</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>DAYS_LAST_DUE</th>
      <td>0</td>
      <td>673065</td>
      <td>40.3</td>
      <td>673065</td>
      <td>40.3</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>DAYS_TERMINATION</th>
      <td>0</td>
      <td>673065</td>
      <td>40.3</td>
      <td>673065</td>
      <td>40.3</td>
      <td>float64</td>
    </tr>
    <tr>
      <th>NFLAG_INSURED_ON_APPROVAL</th>
      <td>665527</td>
      <td>673065</td>
      <td>40.3</td>
      <td>1338592</td>
      <td>80.1</td>
      <td>float64</td>
    </tr>
  </tbody>
</table>
</div>




```python
# Getting the 11 columns which has more than 40% unknown
irrelevant_columns_prev = missing_gt_thresh_prev_df.index.tolist()
irrelevant_columns_prev
```




    ['RATE_INTEREST_PRIMARY',
     'RATE_INTEREST_PRIVILEGED',
     'AMT_DOWN_PAYMENT',
     'RATE_DOWN_PAYMENT',
     'NAME_TYPE_SUITE',
     'DAYS_FIRST_DRAWING',
     'DAYS_FIRST_DUE',
     'DAYS_LAST_DUE_1ST_VERSION',
     'DAYS_LAST_DUE',
     'DAYS_TERMINATION',
     'NFLAG_INSURED_ON_APPROVAL']




```python
# Listing down columns which are not needed
unnecessary_columns_prev = ['WEEKDAY_APPR_PROCESS_START',
                            'HOUR_APPR_PROCESS_START',
                            'FLAG_LAST_APPL_PER_CONTRACT',
                            'NFLAG_LAST_APPL_IN_DAY']
```


```python
irrelevant_columns_prev = irrelevant_columns_prev + unnecessary_columns_prev
print(f"Irrelevant colmuns to be removed: {len(irrelevant_columns_prev)}")
```

    Irrelevant colmuns to be removed: 15


#### Insight
Total 15 columns can be deleted from prev_df


```python
# Dropping the unnecessary columns from previous
prev_df.drop(labels=irrelevant_columns_prev,
             axis=1,
             inplace=True)

# Inspecting the dataframe after removal of unnecessary columns
print(f"Shape of Dataframe after removing irrelevant coluns: {prev_df.shape}")
```

    Shape of Dataframe after removing irrelevant coluns: (1670214, 22)


#### Insight
After deleting unnecessary columns, there are 22 columns remaining in prev_df.


```python

```

## Merging "application_data" dataframe and "previous_application" dataframe


```python
# Merge both the dataframe on SK_ID_CURR with Inner Joins
loan_process_df = pd.merge(df, prev_df, how='inner', on='SK_ID_CURR')
loan_process_df.head()
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>SK_ID_CURR</th>
      <th>TARGET</th>
      <th>NAME_CONTRACT_TYPE_x</th>
      <th>CODE_GENDER</th>
      <th>FLAG_OWN_CAR</th>
      <th>FLAG_OWN_REALTY</th>
      <th>CNT_CHILDREN</th>
      <th>AMT_INCOME_TOTAL</th>
      <th>AMT_CREDIT_x</th>
      <th>AMT_ANNUITY_x</th>
      <th>AMT_GOODS_PRICE_x</th>
      <th>NAME_TYPE_SUITE</th>
      <th>NAME_INCOME_TYPE</th>
      <th>NAME_EDUCATION_TYPE</th>
      <th>NAME_FAMILY_STATUS</th>
      <th>NAME_HOUSING_TYPE</th>
      <th>REGION_POPULATION_RELATIVE</th>
      <th>AGE</th>
      <th>DAYS_EMPLOYED</th>
      <th>DAYS_REGISTRATION</th>
      <th>DAYS_ID_PUBLISH</th>
      <th>OCCUPATION_TYPE</th>
      <th>CNT_FAM_MEMBERS</th>
      <th>REGION_RATING_CLIENT</th>
      <th>REGION_RATING_CLIENT_W_CITY</th>
      <th>WEEKDAY_APPR_PROCESS_START</th>
      <th>HOUR_APPR_PROCESS_START</th>
      <th>REG_REGION_NOT_LIVE_REGION</th>
      <th>REG_REGION_NOT_WORK_REGION</th>
      <th>LIVE_REGION_NOT_WORK_REGION</th>
      <th>REG_CITY_NOT_LIVE_CITY</th>
      <th>REG_CITY_NOT_WORK_CITY</th>
      <th>LIVE_CITY_NOT_WORK_CITY</th>
      <th>ORGANIZATION_TYPE</th>
      <th>OBS_30_CNT_SOCIAL_CIRCLE</th>
      <th>DEF_30_CNT_SOCIAL_CIRCLE</th>
      <th>OBS_60_CNT_SOCIAL_CIRCLE</th>
      <th>DEF_60_CNT_SOCIAL_CIRCLE</th>
      <th>DAYS_LAST_PHONE_CHANGE</th>
      <th>FLAG_DOCUMENT_3</th>
      <th>AMT_REQ_CREDIT_BUREAU_HOUR</th>
      <th>AMT_REQ_CREDIT_BUREAU_DAY</th>
      <th>AMT_REQ_CREDIT_BUREAU_WEEK</th>
      <th>AMT_REQ_CREDIT_BUREAU_MON</th>
      <th>AMT_REQ_CREDIT_BUREAU_QRT</th>
      <th>AMT_REQ_CREDIT_BUREAU_YEAR</th>
      <th>AMT_INCOME_RANGE</th>
      <th>AGE_GROUP</th>
      <th>AMT_CREDIT_RANGE</th>
      <th>YEARS_EMPLOYED</th>
      <th>EMPLOYMENT_YEAR_RANGE</th>
      <th>CREDIT_TO_ANNUITY_RATIO</th>
      <th>CREDIT_TO_GOODS_RATIO</th>
      <th>ANNUITY_TO_INCOME_RATIO</th>
      <th>CREDIT_TO_INCOME_RATIO</th>
      <th>INCOME_TO_EMPLOYED_RATIO</th>
      <th>SK_ID_PREV</th>
      <th>NAME_CONTRACT_TYPE_y</th>
      <th>AMT_ANNUITY_y</th>
      <th>AMT_APPLICATION</th>
      <th>AMT_CREDIT_y</th>
      <th>AMT_GOODS_PRICE_y</th>
      <th>NAME_CASH_LOAN_PURPOSE</th>
      <th>NAME_CONTRACT_STATUS</th>
      <th>DAYS_DECISION</th>
      <th>NAME_PAYMENT_TYPE</th>
      <th>CODE_REJECT_REASON</th>
      <th>NAME_CLIENT_TYPE</th>
      <th>NAME_GOODS_CATEGORY</th>
      <th>NAME_PORTFOLIO</th>
      <th>NAME_PRODUCT_TYPE</th>
      <th>CHANNEL_TYPE</th>
      <th>SELLERPLACE_AREA</th>
      <th>NAME_SELLER_INDUSTRY</th>
      <th>CNT_PAYMENT</th>
      <th>NAME_YIELD_GROUP</th>
      <th>PRODUCT_COMBINATION</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>100002</td>
      <td>1</td>
      <td>Cash loans</td>
      <td>M</td>
      <td>0</td>
      <td>1</td>
      <td>0</td>
      <td>2.025</td>
      <td>4.065975</td>
      <td>24700.5</td>
      <td>351000.0</td>
      <td>Unaccompanied</td>
      <td>Working</td>
      <td>Secondary / secondary special</td>
      <td>Single / not married</td>
      <td>House / apartment</td>
      <td>0.018801</td>
      <td>26.0</td>
      <td>637</td>
      <td>3648</td>
      <td>2120</td>
      <td>Laborers</td>
      <td>1</td>
      <td>2</td>
      <td>2</td>
      <td>WEDNESDAY</td>
      <td>10</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>Business Entity Type 3</td>
      <td>2</td>
      <td>2</td>
      <td>2</td>
      <td>2</td>
      <td>1134.0</td>
      <td>1</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>1.0</td>
      <td>200K-300K</td>
      <td>20-30</td>
      <td>400K-500K</td>
      <td>1</td>
      <td>0-5</td>
      <td>0.000165</td>
      <td>0.000012</td>
      <td>12197.777778</td>
      <td>2.007889</td>
      <td>0.003179</td>
      <td>1038818</td>
      <td>Consumer loans</td>
      <td>9251.775</td>
      <td>179055.0</td>
      <td>179055.0</td>
      <td>179055.0</td>
      <td>XAP</td>
      <td>Approved</td>
      <td>-606</td>
      <td>XNA</td>
      <td>XAP</td>
      <td>New</td>
      <td>Vehicles</td>
      <td>POS</td>
      <td>XNA</td>
      <td>Stone</td>
      <td>500</td>
      <td>Auto technology</td>
      <td>24.0</td>
      <td>low_normal</td>
      <td>POS other with interest</td>
    </tr>
    <tr>
      <th>1</th>
      <td>100003</td>
      <td>0</td>
      <td>Cash loans</td>
      <td>F</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>2.700</td>
      <td>12.935025</td>
      <td>35698.5</td>
      <td>1129500.0</td>
      <td>Family</td>
      <td>State servant</td>
      <td>Higher education</td>
      <td>Married</td>
      <td>House / apartment</td>
      <td>0.003541</td>
      <td>46.0</td>
      <td>1188</td>
      <td>1186</td>
      <td>291</td>
      <td>Core staff</td>
      <td>2</td>
      <td>1</td>
      <td>1</td>
      <td>MONDAY</td>
      <td>11</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>School</td>
      <td>1</td>
      <td>0</td>
      <td>1</td>
      <td>0</td>
      <td>828.0</td>
      <td>1</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>200K-300K</td>
      <td>40-50</td>
      <td>Above 1M</td>
      <td>3</td>
      <td>0-5</td>
      <td>0.000362</td>
      <td>0.000011</td>
      <td>13221.666667</td>
      <td>4.790750</td>
      <td>0.002273</td>
      <td>1810518</td>
      <td>Cash loans</td>
      <td>98356.995</td>
      <td>900000.0</td>
      <td>1035882.0</td>
      <td>900000.0</td>
      <td>XNA</td>
      <td>Approved</td>
      <td>-746</td>
      <td>XNA</td>
      <td>XAP</td>
      <td>Repeater</td>
      <td>XNA</td>
      <td>Cash</td>
      <td>x-sell</td>
      <td>Credit and cash offices</td>
      <td>-1</td>
      <td>XNA</td>
      <td>12.0</td>
      <td>low_normal</td>
      <td>Cash X-Sell: low</td>
    </tr>
    <tr>
      <th>2</th>
      <td>100003</td>
      <td>0</td>
      <td>Cash loans</td>
      <td>F</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>2.700</td>
      <td>12.935025</td>
      <td>35698.5</td>
      <td>1129500.0</td>
      <td>Family</td>
      <td>State servant</td>
      <td>Higher education</td>
      <td>Married</td>
      <td>House / apartment</td>
      <td>0.003541</td>
      <td>46.0</td>
      <td>1188</td>
      <td>1186</td>
      <td>291</td>
      <td>Core staff</td>
      <td>2</td>
      <td>1</td>
      <td>1</td>
      <td>MONDAY</td>
      <td>11</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>School</td>
      <td>1</td>
      <td>0</td>
      <td>1</td>
      <td>0</td>
      <td>828.0</td>
      <td>1</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>200K-300K</td>
      <td>40-50</td>
      <td>Above 1M</td>
      <td>3</td>
      <td>0-5</td>
      <td>0.000362</td>
      <td>0.000011</td>
      <td>13221.666667</td>
      <td>4.790750</td>
      <td>0.002273</td>
      <td>2636178</td>
      <td>Consumer loans</td>
      <td>64567.665</td>
      <td>337500.0</td>
      <td>348637.5</td>
      <td>337500.0</td>
      <td>XAP</td>
      <td>Approved</td>
      <td>-828</td>
      <td>Cash through the bank</td>
      <td>XAP</td>
      <td>Refreshed</td>
      <td>Furniture</td>
      <td>POS</td>
      <td>XNA</td>
      <td>Stone</td>
      <td>1400</td>
      <td>Furniture</td>
      <td>6.0</td>
      <td>middle</td>
      <td>POS industry with interest</td>
    </tr>
    <tr>
      <th>3</th>
      <td>100003</td>
      <td>0</td>
      <td>Cash loans</td>
      <td>F</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>2.700</td>
      <td>12.935025</td>
      <td>35698.5</td>
      <td>1129500.0</td>
      <td>Family</td>
      <td>State servant</td>
      <td>Higher education</td>
      <td>Married</td>
      <td>House / apartment</td>
      <td>0.003541</td>
      <td>46.0</td>
      <td>1188</td>
      <td>1186</td>
      <td>291</td>
      <td>Core staff</td>
      <td>2</td>
      <td>1</td>
      <td>1</td>
      <td>MONDAY</td>
      <td>11</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>School</td>
      <td>1</td>
      <td>0</td>
      <td>1</td>
      <td>0</td>
      <td>828.0</td>
      <td>1</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>200K-300K</td>
      <td>40-50</td>
      <td>Above 1M</td>
      <td>3</td>
      <td>0-5</td>
      <td>0.000362</td>
      <td>0.000011</td>
      <td>13221.666667</td>
      <td>4.790750</td>
      <td>0.002273</td>
      <td>2396755</td>
      <td>Consumer loans</td>
      <td>6737.310</td>
      <td>68809.5</td>
      <td>68053.5</td>
      <td>68809.5</td>
      <td>XAP</td>
      <td>Approved</td>
      <td>-2341</td>
      <td>Cash through the bank</td>
      <td>XAP</td>
      <td>Refreshed</td>
      <td>Consumer Electronics</td>
      <td>POS</td>
      <td>XNA</td>
      <td>Country-wide</td>
      <td>200</td>
      <td>Consumer electronics</td>
      <td>12.0</td>
      <td>middle</td>
      <td>POS household with interest</td>
    </tr>
    <tr>
      <th>4</th>
      <td>100004</td>
      <td>0</td>
      <td>Revolving loans</td>
      <td>M</td>
      <td>1</td>
      <td>1</td>
      <td>0</td>
      <td>0.675</td>
      <td>1.350000</td>
      <td>6750.0</td>
      <td>135000.0</td>
      <td>Unaccompanied</td>
      <td>Working</td>
      <td>Secondary / secondary special</td>
      <td>Single / not married</td>
      <td>House / apartment</td>
      <td>0.010032</td>
      <td>53.0</td>
      <td>225</td>
      <td>4260</td>
      <td>2531</td>
      <td>Laborers</td>
      <td>1</td>
      <td>2</td>
      <td>2</td>
      <td>MONDAY</td>
      <td>9</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>Government</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>815.0</td>
      <td>0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>Below 100K</td>
      <td>Above 50</td>
      <td>100K-200K</td>
      <td>0</td>
      <td>NaN</td>
      <td>0.000200</td>
      <td>0.000010</td>
      <td>10000.000000</td>
      <td>2.000000</td>
      <td>0.003000</td>
      <td>1564014</td>
      <td>Consumer loans</td>
      <td>5357.250</td>
      <td>24282.0</td>
      <td>20106.0</td>
      <td>24282.0</td>
      <td>XAP</td>
      <td>Approved</td>
      <td>-815</td>
      <td>Cash through the bank</td>
      <td>XAP</td>
      <td>New</td>
      <td>Mobile</td>
      <td>POS</td>
      <td>XNA</td>
      <td>Regional / Local</td>
      <td>30</td>
      <td>Connectivity</td>
      <td>4.0</td>
      <td>middle</td>
      <td>POS mobile without interest</td>
    </tr>
  </tbody>
</table>
</div>




```python
# Checking the details of the merged dataframe
loan_process_df.shape
```




    (1072961, 77)




```python
# Checking the columns and column types of the dataframe
loan_process_df.info(verbose=True)
```

    <class 'pandas.core.frame.DataFrame'>
    Int64Index: 1072961 entries, 0 to 1072960
    Data columns (total 77 columns):
     #   Column                       Non-Null Count    Dtype   
    ---  ------                       --------------    -----   
     0   SK_ID_CURR                   1072961 non-null  int64   
     1   TARGET                       1072961 non-null  int64   
     2   NAME_CONTRACT_TYPE_x         1072961 non-null  object  
     3   CODE_GENDER                  1072961 non-null  object  
     4   FLAG_OWN_CAR                 1072961 non-null  int64   
     5   FLAG_OWN_REALTY              1072961 non-null  int64   
     6   CNT_CHILDREN                 1072961 non-null  int64   
     7   AMT_INCOME_TOTAL             1072961 non-null  float64 
     8   AMT_CREDIT_x                 1072961 non-null  float64 
     9   AMT_ANNUITY_x                1072868 non-null  float64 
     10  AMT_GOODS_PRICE_x            1071894 non-null  float64 
     11  NAME_TYPE_SUITE              1070176 non-null  object  
     12  NAME_INCOME_TYPE             1072961 non-null  object  
     13  NAME_EDUCATION_TYPE          1072961 non-null  object  
     14  NAME_FAMILY_STATUS           1072961 non-null  object  
     15  NAME_HOUSING_TYPE            1072961 non-null  object  
     16  REGION_POPULATION_RELATIVE   1072961 non-null  float64 
     17  AGE                          1072961 non-null  float64 
     18  DAYS_EMPLOYED                1072961 non-null  int64   
     19  DAYS_REGISTRATION            1072961 non-null  int64   
     20  DAYS_ID_PUBLISH              1072961 non-null  int64   
     21  OCCUPATION_TYPE              1072961 non-null  object  
     22  CNT_FAM_MEMBERS              1072961 non-null  int64   
     23  REGION_RATING_CLIENT         1072961 non-null  int64   
     24  REGION_RATING_CLIENT_W_CITY  1072961 non-null  int64   
     25  WEEKDAY_APPR_PROCESS_START   1072961 non-null  object  
     26  HOUR_APPR_PROCESS_START      1072961 non-null  int64   
     27  REG_REGION_NOT_LIVE_REGION   1072961 non-null  int64   
     28  REG_REGION_NOT_WORK_REGION   1072961 non-null  int64   
     29  LIVE_REGION_NOT_WORK_REGION  1072961 non-null  int64   
     30  REG_CITY_NOT_LIVE_CITY       1072961 non-null  int64   
     31  REG_CITY_NOT_WORK_CITY       1072961 non-null  int64   
     32  LIVE_CITY_NOT_WORK_CITY      1072961 non-null  int64   
     33  ORGANIZATION_TYPE            1072961 non-null  object  
     34  OBS_30_CNT_SOCIAL_CIRCLE     1072961 non-null  int64   
     35  DEF_30_CNT_SOCIAL_CIRCLE     1072961 non-null  int64   
     36  OBS_60_CNT_SOCIAL_CIRCLE     1072961 non-null  int64   
     37  DEF_60_CNT_SOCIAL_CIRCLE     1072961 non-null  int64   
     38  DAYS_LAST_PHONE_CHANGE       1072961 non-null  float64 
     39  FLAG_DOCUMENT_3              1072961 non-null  int64   
     40  AMT_REQ_CREDIT_BUREAU_HOUR   947068 non-null   float64 
     41  AMT_REQ_CREDIT_BUREAU_DAY    947068 non-null   float64 
     42  AMT_REQ_CREDIT_BUREAU_WEEK   947068 non-null   float64 
     43  AMT_REQ_CREDIT_BUREAU_MON    947068 non-null   float64 
     44  AMT_REQ_CREDIT_BUREAU_QRT    947068 non-null   float64 
     45  AMT_REQ_CREDIT_BUREAU_YEAR   947068 non-null   float64 
     46  AMT_INCOME_RANGE             1072961 non-null  category
     47  AGE_GROUP                    1072961 non-null  category
     48  AMT_CREDIT_RANGE             1072961 non-null  category
     49  YEARS_EMPLOYED               1072961 non-null  int64   
     50  EMPLOYMENT_YEAR_RANGE        970250 non-null   category
     51  CREDIT_TO_ANNUITY_RATIO      1072868 non-null  float64 
     52  CREDIT_TO_GOODS_RATIO        1071894 non-null  float64 
     53  ANNUITY_TO_INCOME_RATIO      1072868 non-null  float64 
     54  CREDIT_TO_INCOME_RATIO       1072961 non-null  float64 
     55  INCOME_TO_EMPLOYED_RATIO     1072961 non-null  float64 
     56  SK_ID_PREV                   1072961 non-null  int64   
     57  NAME_CONTRACT_TYPE_y         1072961 non-null  object  
     58  AMT_ANNUITY_y                844220 non-null   float64 
     59  AMT_APPLICATION              1072961 non-null  float64 
     60  AMT_CREDIT_y                 1072961 non-null  float64 
     61  AMT_GOODS_PRICE_y            836324 non-null   float64 
     62  NAME_CASH_LOAN_PURPOSE       1072961 non-null  object  
     63  NAME_CONTRACT_STATUS         1072961 non-null  object  
     64  DAYS_DECISION                1072961 non-null  int64   
     65  NAME_PAYMENT_TYPE            1072961 non-null  object  
     66  CODE_REJECT_REASON           1072961 non-null  object  
     67  NAME_CLIENT_TYPE             1072961 non-null  object  
     68  NAME_GOODS_CATEGORY          1072961 non-null  object  
     69  NAME_PORTFOLIO               1072961 non-null  object  
     70  NAME_PRODUCT_TYPE            1072961 non-null  object  
     71  CHANNEL_TYPE                 1072961 non-null  object  
     72  SELLERPLACE_AREA             1072961 non-null  int64   
     73  NAME_SELLER_INDUSTRY         1072961 non-null  object  
     74  CNT_PAYMENT                  844224 non-null   float64 
     75  NAME_YIELD_GROUP             1072961 non-null  object  
     76  PRODUCT_COMBINATION          1072680 non-null  object  
    dtypes: category(4), float64(23), int64(27), object(23)
    memory usage: 609.9+ MB


#### Bifurcating the loan process dataframe based on Target value 0 and 1 for correlation and other analysis


```python
# Bifurcating the loan process dataframe based on Target value 0 and 1 for correlation and other analysis

loan_non_defaulters_df = loan_process_df[loan_process_df['TARGET']==0] # Non-Defaulters
loan_defaulters_df = loan_process_df[loan_process_df['TARGET']==1] # Defaulters
```

### Plotting Contract Status vs Purpose of the loan


```python
univariate_merged("NAME_CASH_LOAN_PURPOSE",
                  loan_non_defaulters_df,
                  "NAME_CONTRACT_STATUS",
                  ["#548235", "#FF0000", "#0070C0", "#FFFF00"],
                  True,
                  (18,7))

univariate_merged("NAME_CASH_LOAN_PURPOSE",
                  loan_defaulters_df,
                  "NAME_CONTRACT_STATUS",
                  ["#548235", "#FF0000", "#0070C0", "#FFFF00"],
                  True,
                  (18,7))
```


    
![png](output_171_0.png)
    



    
![png](output_171_1.png)
    


#### Insight
- Loan purpose has high number of unknown values (XAP, XNA)
- Loan taken for the purpose of Repairs seems to have highest default rate
- A very high number application have been rejected by bank or refused by client which has purpose as repair or other. 
- This shows that purpose repair is taken as high risk by bank and either they are rejected or bank offers very high loan interest rate which is not feasible by the clients, thus they refuse the loan.


```python
# Checking the Contract Status based on loan repayment status and whether there is any business loss or financial loss
univariate_merged("NAME_CONTRACT_STATUS", 
                  loan_process_df, 
                  "TARGET", 
                  ['g','r'],
                  False,(12,8))

g = loan_process_df.groupby("NAME_CONTRACT_STATUS")["TARGET"]
df1 = pd.concat([g.value_counts(),
                 round(g.value_counts(normalize=True).mul(100),2)],
                axis=1, 
                keys=('Counts','Percentage'))
df1['Percentage'] = df1['Percentage'].astype(str) +"%" # adding percentage symbol in the results for understanding
print (df1)
```


    
![png](output_173_0.png)
    


                                 Counts Percentage
    NAME_CONTRACT_STATUS TARGET                   
    Approved             0       619965     91.74%
                         1        55811      8.26%
    Canceled             0       169752     89.79%
                         1        19298     10.21%
    Refused              0       163720     86.94%
                         1        24590     13.06%
    Unused offer         0        18138     91.49%
                         1         1687      8.51%


#### Insight
- 90% of the previously cancelled client have actually repayed the loan. Revisiting the interest rates would increase business opoortunity for these clients
- 88% of the clients who have been previously refused a loan has payed back the loan in current case.
- Refual reason should be recorded for further analysis as these clients would turn into potential repaying customer.


```python
# Plotting the relationship between income total and contact status
merged_pointplot("NAME_CONTRACT_STATUS", 'AMT_INCOME_TOTAL')
```


    
![png](output_175_0.png)
    


#### Insight
The point plot show that the people who have canceled or refused offer earlier have defaulted even when there average income is higher than others


```python
# Plotting the relationship between people who defaulted in last 60 days being in client's social circle and contact status
merged_pointplot("NAME_CONTRACT_STATUS", 'DEF_60_CNT_SOCIAL_CIRCLE')
```


    
![png](output_177_0.png)
    


#### Insight
Clients who have average of 0.13 or higher DEF_60_CNT_SOCIAL_CIRCLE score tend to default more and hence client's social circle has to be analysed before providing the loan.
