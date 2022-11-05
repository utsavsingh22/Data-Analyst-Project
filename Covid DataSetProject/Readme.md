### Covid Dataset
***
Consider that the Ministry of Health has appointed you as a Data analyst to perform a detailed analysis of the Covid-19 Pandemic across India, states, and union territory. You are given a snapshot (16 rows of a big dataset) of the dataset as below. 
 
Dataset:
[covid-19_india](https://docs.google.com/spreadsheets/d/1Dyf2Mw5qDVpbUJgftAhh3x-urc3g8rAfEl-HWB_dKMw/edit#gid=1594341051)
 
The dataset has the following features: 
 
Date : Date of testing (String)
Time : Time of testing (String)
State/Union Territory : Location of testing (String)
Confirmed_Indian_National : Covid-19 positive tested people who are Indian Nationals (Int)
Confirmed_Foreign_National : Covid-19 positive tested people who are foreign Nationals (Int)
Active : Covid-19 Active case confirmed on the particular date (Int)
Cured : Covid-19 Cured case confirmed on the particular date (Int)
Deaths : Deaths due to covid-19 confirmed on the particular date (Int)
Total : Total Covid-19 cases observed till the particular date (Active+Cured+Deaths) (Int)

##Questions
Q.1 What type of data is provided?
ANS-Structured data 
Structured data is the data that is stored in the Tabular format as row and column. The Covid-19 Dataset, in tabular format, is a structured dataset.

Q.2 Can you find the total % of new cases in Kerala compared to India?
ANS-Yes
The total number of cases for all states has been provided. The total number of new cases in India will be the sum of all these cases. By dividing the observed new cases in Kerala by the sum of the observed new cases in every state, we can find the total percentage of new cases in Kerala compared to India. 

Q.3 Can you find which country has the highest cases by looking at dataset ?
ANS-No
There is information about Covid-19 cases of India in the dataset. You do not have any information about other countries. Thus, you cannot determine which country has the highest cases using the provided data. 

Q.4 Which of the following can be analysed using /looking at this dataset?
ANS-pattern of active and death cases across different months
- The dataset has information related to active and death cases. It also has a date column, which indicates the month of the observed cases. Thus, you can find a pattern of active and death cases across different months via the three attributes:- Date, Active, Deaths.

- As you do not have information about various countries and districts, you cannot find the timeline view of cases across different countries, states and districts.

- As you have no information relating covid-19 with climate, you cannot find the impact of climate on the spread of infection.

Q.5 Which of the following data will help you find the answer to the % of cases concerning the population of a state.
ANS-Population data
If you want to find the % of cases about the state's population, you need to have a ratio of the number of confirmed cases in a state to the state's population. The population of a state is not available at the moment. It can be computed by adding Population data. 

Q.6 You need to find the death rate of each State. You are provided with the population data of each state over the internet. What will be your next action?
ANS-'State/Union Territory will be the common merging column
You can find the death rate of each state by dividing its death cases by its population. As the computation will be carried out statewide, 'State/Union Territory will be the common merging column.

Q.7 Before Analysing the result, the dataset needs to be validated.
Write the name of the state which have missing value in any of the column.
ANS-Haryana
The "Confirmed_Indian_National" and "Confirmed_Foreign_National" Column values for Haryana State are not provided. You must handle the missing attributes before analysing the data.

Q.8 The data type for the “Date” Column is in String format. As a Data Analyst, what will be your next step?
ANS-Convert the Datatype of "Date" column to date type 
Correct format helps in the analysis and feature engineering methods. The “Date” column should be in Date-type format to better analyse

Q.9 Suppose you wish to calculate the total recovery rate in a state over a given period. Which attributes/features would be helpful?
ANS-Date,State,Active,Cured,Time
- The Date and Time attribute will help you select a 
period. 

- To target a state, you will need state attribute data, 

- To find recovery rate, you will need an active case 
 and cured case attribute data.

Q.10 The government wants to understand the increasing trend of the covid cases. Which kind of analysis will help the government to find the same?
ANS-Descriptive Analysis.
To understand the trend, the government has to go to the past day's data of covid cases. And going through past data is known as Descriptive Analysis. 

Q.11 While going through the given dataset, the Government sees that Telangana has high deaths and active cases. Now they want to understand why this state has the highest deaths and high active access. What kind of analysis will help the government?
ANS-Diagnostic analysis

Q.12 By looking at the data or analysing the data, the Government wants to impose a lockdown to control the spread of the virus in different states. Which type of analysis will help here?
ANS-Predictive analysis
Now, After looking at the data, the government finds out the cases are rising day by day. But to reduce the cases, they are posing a lockdown. But they have to forecast a future number of cases for the same. And they are forecasting the future in any analysis known as predictive analysis. But to reduce the cases, they are posing a lockdown.

Q.13 After going through the data of a certain period, the government is now able to control the situation and save the people from the next spread wave. Which type of analysis helped here?
ANS-Prescriptive analysis.
After seeing the trend and predicting the number of cases, the government is now in action to solve the rising cases and death. So to take proper action, like with who they should start the vaccination ( age group) and taking action, comes under the Prescriptive analysis.

Q.14 The government finds that the vaccination drive is going very well. Now for their future vote support, they want to add to their campaigning rally. They ask Data analysts to find the total number of vaccinations done in the given period. What analysis will help in this situation?
ANS-Descriptive Analysis
After the success of the vaccination drive, the government needs the data/records for the same for their profit. Now for the same, they will be needing compiled data, which will come under the Descriptive Analysis.