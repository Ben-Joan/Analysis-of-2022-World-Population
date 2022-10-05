# **Analysis-of-2022-World-Population**
| ![The Globe](https://github.com/Ben-Joan/Analysis-of-2022-World-Population/blob/main/_.jpeg) | 
|:------------------------------------------------------------------------------------------------------------------:| 
| **The World Globe** 
The current US Census Bureau world population estimate in June 2019 shows that the current global population is 7,577,130,400 people on earth, which far exceeds the world population of 7.2 billion in 2015. Our own estimate based on UN data shows the world's population surpassing 7.7 billion.
China is the most populous country in the world with a population exceeding 1.4 billion. It is one of just two countries with a population of more than 1 billion, with India being the second. As of 2018, India has a population of over 1.355 billion people, and its population growth is expected to continue through at least 2050. By the year 2030, the country of India is expected to become the most populous country in the world. This is because India's population will grow, while China is projected to see a loss in population. [Article](https://worldpopulationreview.com/)

## **THE TASK**
Explore the dataset to understand the current population of the world is the primary task i identified with for this project..Also i wanted to perform further analysis to predict the population
of the world in the next 10years but for now i'm still working on learning how predictive analytics works so i will just focus on the descriptive. 
The major questions which led me to perform this analysis include:

1)Most and least populated continent and countries

2)Growth rate of each continent

3)Desnsely populated countries in the world

4)Most populated African countries 

5)Densely populated countries specifically in Africa


## **MY APPROACH**
|  ![project steps](https://github.com/Ben-Joan/Analysis-of-2022-World-Population/blob/main/WP%20Approach.png)  | 
|:------------------------------------------------------------------------------------------------------------------------:| 
|               **Project Steps. ** _Designed by Ben Joan in PowerPoint_   

## **THE PROBLEM**
Firstly, my primary aim was to learn how database can be connected to a BI tool [power BI]. To achieve this, i needed a dataset so i decided to look for something not too complex that's why i settled for the population dataseton [kaggle](https://www.kaggle.com/datasets/iamsouravbanerjee/world-population-dataset).

After deciding on something about population, i read a few articles online on the world population before outlining questions i wanted answered from the available dataset.

## **DATA PREPARATION**
Collecting and importing the data to a database was next. I familiarized myself with the data which contained 17 columns and 234 rows, and the population of countries in 10years gap except 2015 and 2020. No much cleaning was done which i felt bad about, i really wanted to work on learning how to clean dirty dataset for analysis. Some of the cleaning techniques i was able to perform were;

Identifying the primary key, checking for duplicates and null values, renaming the column head to a more SQL favoured format as well as removing some not required columns with the aid of SQL before importing into power BI.


| ![checking for duplicate](https://github.com/Ben-Joan/Analysis-of-2022-World-Population/blob/main/Screenshot%20(165).png)  | 
|:---------------------------------------------------------------------------------------------------------------------:| 
|                                                   **Checking for duplicate in SQL**                                                    |

## **ANALYZE**
To analyze and query the data thereby answering all outlined questions, i made use of the Microsoft SQL server database. SQL functions like Count, Average, Group by , Top, order by, Cast,etc. were utilized. some of the queries from the analysis include;

| ![sql query](https://github.com/Ben-Joan/Analysis-of-2022-World-Population/blob/main/Screenshot%20(166).png)  | 
|:---------------------------------------------------------------------------------------------------------------------:| 
|                                                   **Overall continent statistics**                                                    |

Other queries can be found on [my github](https://github.com/Ben-Joan/Analysis-of-2022-World-Population/blob/main/Population.sql)

## **VISUALIZATION**
After exploring the data in SQL, i connected the dataset to power bi using the import query method.
| ![power BI import](https://user-images.githubusercontent.com/103894233/193960726-793d73a7-c83a-4534-bdb1-5e7374a74060.png)  | 
|:---------------------------------------------------------------------------------------------------------------------:| 
|                                                   **Importing Data for visualization**                                                    |

Honestly, storytelling isn't one of my strong points so i had to do alot of experimentations,rearrangements and formatting before coming up with the dashboard below;
| ![dashboard](https://github.com/Ben-Joan/Analysis-of-2022-World-Population/blob/main/World%20Population_page-0001.jpg)  | 
|:-----------------------------------------------------------------------------------------------------------------------:| 
|                     **World population  Dashboard** _Designed by Ben Joan with Power BI_                      |

---

## **INSIGHTS**
Here is the highlight of the insights from the analysis:
a)By the year 2022, the world has a total population of 7.97 billion people, of which 52% of this people live in the top seven countries i.e China, India, USA, Indonesia, pakistan, Nigeria, Brazil and the other 48% is distributed among the other countries.(this was quite the shocking for me from this analysis).

b) Though the population of Asia alone make up 59% of the world's population and growth rate of 50.5%, Africa still have the highest growth rate of 58.2% out of the 7 continents

c)Defining overcrowding(densely populated) as countries with a population higher than the average population but area less than the average area, The top 5 overcrowded countries where Bangladesh, japan, philippines, vietnam, germany while Africa (my home continent) had only 3 countries i.e Kenya, Uganda & morroco.

d) Nigeria my home country is the most populated black country with 219 million people which is 16% of the Africa population (1.43 Billion) and a growth rate of 1.02%. Other countries following closeby in Africa are Ethiopia,Egypt, DR congo, and Tanzania.

Honestly, i used to think Ghana and South Africa were the next in line in population after Nigeria but now i know better and i can speak to anyone who disagrees with figures.😀

---

## **RELEVANT LINKS**


