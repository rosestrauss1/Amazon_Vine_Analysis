# Amazon Vine Analysis

## Overview of the analysis:
The purpose of this analysis is to use PySpark to extract the dataset, transform the data we received from Amazon. Then, we connected to AWS to load the data into PG Admin. Finally, I used SQL to determine if there is any bias toward favorable reviews from Vine members in your dataset.

## Results: Using bulleted lists and images of DataFrames as support, address the following questions:

* How many Vine reviews and non-Vine reviews were there?

There were 64968 non-Vine reviews and 613 Vine reviews. Below are the tables from Postgres.

<img width="290" alt="Screen Shot 2022-02-20 at 10 56 40 PM" src="https://user-images.githubusercontent.com/92963227/154892583-eb19f0b3-26da-4916-a0fe-e22b4b12850b.png">


<img width="291" alt="Screen Shot 2022-02-20 at 10 56 26 PM" src="https://user-images.githubusercontent.com/92963227/154892604-3cb77497-9c60-4899-a35f-a695134d8aca.png">


* How many Vine reviews were 5 stars? How many non-Vine reviews were 5 stars?


There were 222 five star vine reviews and 30543 five star non-vine reviews.

* What percentage of Vine reviews were 5 stars? What percentage of non-Vine reviews were 5 stars?


The percentage of Vine reviews that were 5 stars is 36%. The non-Vine reviews that were 5 stars were 47%. The table below shows the table from Postgres.

<img width="382" alt="Screen Shot 2022-02-20 at 11 06 02 PM" src="https://user-images.githubusercontent.com/92963227/154892775-a48c5140-65cd-4dae-a74a-15bae21ed17e.png">


## Summary: 
There is not a positivity bias because the Vine program had a smaller percentage of 5 star reviews, with 36% compared to the 47% non vine reiviews. An additional analysis I could preform with this dataset to support this statement would be 
