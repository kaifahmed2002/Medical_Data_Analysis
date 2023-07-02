# Medical Data Analysis

## About the company

Dataset of personal medical data of 1,338 patients with a variety of variables that have an affect on the cost of medical services provided. The purpose of the analysis is to analyze the effects of variables on the cost of medical care, e.g. age, gender, region, etc. 


## ERD 

![Medical Data ERD](https://user-images.githubusercontent.com/112409778/228036499-add02f0a-54b8-4a90-90f9-47e71c843ef0.png)

## Variables

There are a variety of variables that will impact the outcome of this analysis:

- Age: age of primary beneficiary
  
- Sex: insurance contractor gender,
  - Male 
  - Female
- Body Mass Index (BMI): Weight to height body mass ratio
  - Underweight: Below 18.5
  - Normal: 18.5 - 24.9
  - Overweight: 25.0 – 29.9
  - Obese: Greater Than or equal to 30.0 
- Children: Number of dependents
- Smoker: Smoking
- Region: Region of domicile of the patient in the United States.
  - Northeast 
  - Southeast 
  - Northwest
- Charges: Individual medical costs billed by health insurance for services provided

## Objective

The objective of the analysis is to analyze the effects of variables on the cost of medical care. The analysis seeks to answer the following questions:

1. Which region has the lowest cost of medical care?
2. Which gender has the highest typical medical charges?
3. Is there correlation between the number of dependents a patient has and medical charges?
4. Is there correlation between age and medical charges?
5. Do individuals with higher BMI have higher medical charges?
6. What is the relationship between smoking and medical charges?


## Analysis

1. What region has the lowest cost of medical care?

![Q1 P1](https://github.com/kaifahmed2002/Medical_Data_Analysis/assets/92524691/31d4fab9-4080-461c-94fa-f4fea0c27c62)

The overall average of charges in the dataset is $13,270.42. However, there is an uneven distribution of charges in the dataset. As indicated in the histogram above there is a right skew that is affecting the average. The median charge, $9,377.90, is a better indication of the amount of a typical medical charge. 

![Q1 P2](https://github.com/kaifahmed2002/Medical_Data_Analysis/assets/92524691/5c02d5f0-0497-4a09-862c-afe1fae5b94d)

The same is true for the distribution of charges in the four regions in the dataset. As aforementioned the median is a better indication of the typical medical charge within each region. The Southwest region has the lowest median charge, $8,798.59, of all the regions in the dataset. This can be attributed to the Southwest region having the least amount of smokers, 58, overall, the least amount of female smokers, 21, in the dataset, and the second smallest amount of male smokers, 37, in the dataset. This is significant due to smokers incurring charges that are four times greater than non-smokers on average!


2. Which  gender has the highest highest typical charges?

The distribution of the charges of both male and females have a right skew in which outliers are impacting the calculation of the average charges.

![Q2P1 (1)](https://github.com/kaifahmed2002/Medical_Data_Analysis/assets/92524691/78519fb6-30fb-4567-aef8-b27445d79d76)

The median charges of each sex is a better indicator of the typical charges. Males have a median charge of $9,369.62  and females have a median charge of  $9,412.96 as indicated in the bar ch
art above.

![Q2 P2 (1)](https://github.com/kaifahmed2002/Medical_Data_Analysis/assets/92524691/bde6db10-5278-431e-afbe-d63e5e24fca8)

The median charges of each sex is a better indicator of the typical charges. Males have a median charge of $9,369.62  and females have a median charge of  $9,412.96 as indicated in the bar ch
art above.

3. Is there correlation between the number of dependents a patient has and medical charges?

![Q3](https://github.com/kaifahmed2002/Medical_Data_Analysis/assets/92524691/2e9974ae-a33b-477a-83ca-129b65fb94ca)

As indicated in the scatter plot above there is no linear correlation between number of dependents and charges. The correlation coefficient of comparing the number of children a patient has to charges incurred is .07, indicating that there is no correlation. This is also evident in the line of best fit seen on the scatter plot above.


4. Is there correlation between age and medical charges?
   
![Q4](https://github.com/kaifahmed2002/Medical_Data_Analysis/assets/92524691/a204a3d6-3481-473f-a06e-c9809a2c7dfe)

There is a low correlation between age and charges incurred by patients. This is indicated by the correlation coefficient of 0.30 as well as the line of best fit in the scatter plot above. This is also indicated in the average charges of each age category as well. Teens have an average medical charge of $8,407.35, Adults have an average charge of $10,603.65, Middle Aged Adults have an average medical charge of $15,431.97, and Seniors have an average medical charge of $21,248.02. There is a clear pattern of increased cost as the age of the patient increases.

5. Do individuals with higher BMI have higher medical costs?

![Q5](https://github.com/kaifahmed2002/Medical_Data_Analysis/assets/92524691/a6cd1aff-b681-431b-9fab-30a84a8e398a)

Yes, individuals with higher BMIs have higher medical costs. The higher a patient’s BMI the higher the average charges as indicated in the line chart above. 

6. What is the relationship between smoking and medical charges?
   
![Q6 P1 (1)](https://github.com/kaifahmed2002/Medical_Data_Analysis/assets/92524691/91bfe98f-5b17-45f6-a60e-a3fd7ace8de6)

Smoking adversely impacts medical charges. As indicated in the bar chart above smokers have an average charge of $32,050.23 and non-smokers have an average medical charge of $8,434.27. Smokers have an average charge that is nearly four times greater than the amount of non-smokers.

![Q6 P2](https://github.com/kaifahmed2002/Medical_Data_Analysis/assets/92524691/1be35244-94fb-454f-8797-69334b19e911)

As seen in the histogram above, the distribution of charges of smokers is bimodal. The two modes are indicative of the subgroups related to BMI. There are two subgroups, patients that have a BMI less than 30 and patients that have a BMI greater than 30. Recall that a BMI over 30 is categorized as obese and a BMI less than 30 is categorized as not obese.
