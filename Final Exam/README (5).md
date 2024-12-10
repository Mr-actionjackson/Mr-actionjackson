# Final Examination

## Due Friday, December 6, 2024 at 11:59 PM in your GitHub repository.

Complete the exercise described in the pdf above and enter your answers in 
the spaces below.

*Please see the revised version of the pdf copy of the question paper, uploaded Nov. 23, 2024.*

## Part A: Data Handling and Preliminary Regression Modelling

### Question 1

a) Read in the ```airplane_sales.csv``` dataset and store it in a data frame called ```airplane_sales``` in your workspace. 


```

View(airplane_sales)

```

b) Calculate and copy the printed output from a ```summary``` of the data. 
Use this to get familiar with the contents of the dataset. 


```

> summary(airplane_sales)
    0Sale_ID          age            price       
 Min.   :101.0   Min.   :13.00   Min.   :  9000  
 1st Qu.:149.5   1st Qu.:19.00   1st Qu.: 19250  
 Median :198.0   Median :22.00   Median : 33500  
 Mean   :198.0   Mean   :24.61   Mean   : 50237  
 3rd Qu.:246.5   3rd Qu.:30.00   3rd Qu.: 73500  
 Max.   :295.0   Max.   :44.00   Max.   :254000 


```

c) Estimate a regression model to predict ```price``` as a function of ```age```. 
Copy the printed estimation output from the ```summary``` command. 


```


lm(formula = airplane_sales)

Coefficients:
(Intercept)          age        price  
  1.250e+02    7.228e-01    1.099e-03 

```


### Question 2

a) Read in the ```airplane_specs.csv``` dataset and store it 
in a data frame called ```airplane_specs``` in your workspace. 


```

> View(airplane_specs)
```

b)  Form a dataset ```airplane_sales_specs.csv``` 
by ```merge```ing the data frames 
```airplane_sales.csv``` and ```airplane_specs.csv```. 
Store the new dataset in a data frame called 
```airplane_sales_specs``` in your workspace. 


```

View(airplane_sales_specs) 

```


c) Calculate and copy the printed output from a ```summary``` of the data. 
Use this to get familiar with the contents of the dataset. 


```

> summary(airplane_sales_specs) 
    0Sale_ID          age            price             pass      
 Min.   :101.0   Min.   :13.00   Min.   :  9000   Min.   :2.000  
 1st Qu.:149.5   1st Qu.:19.00   1st Qu.: 19250   1st Qu.:4.000  
 Median :198.0   Median :22.00   Median : 33500   Median :4.000  
 Mean   :198.0   Mean   :24.61   Mean   : 50237   Mean   :4.287  
 3rd Qu.:246.5   3rd Qu.:30.00   3rd Qu.: 73500   3rd Qu.:6.000  
 Max.   :295.0   Max.   :44.00   Max.   :254000   Max.   :6.000  
      wtop           fixgear           tdrag        
 Min.   :0.0000   Min.   :0.0000   Min.   :0.00000  
 1st Qu.:0.0000   1st Qu.:0.0000   1st Qu.:0.00000  
 Median :0.0000   Median :0.0000   Median :0.00000  
 Mean   :0.4615   Mean   :0.4513   Mean   :0.05641  
 3rd Qu.:1.0000   3rd Qu.:1.0000   3rd Qu.:0.00000  
 Max.   :1.0000   Max.   :1.0000   Max.   :1.00000


```


d) Estimate a regression model to predict ```price``` as a function of 
```age```, ```pass```, ```wtop```, ```fixgear```, 
and ```tdrag```. 
Copy the printed estimation output from the ```summary``` command. 


```
lm(formula = airplane_sales_specs)

Coefficients:
(Intercept)          age        price         pass         wtop      fixgear  
 95.4555926   -0.0760640    0.0001937   13.7943320    7.2441801   69.7875243  
      tdrag  
 12.6108476

```




### Question 3

a) Read in the ```airplane_perf.csv``` dataset and store it 
in a data frame called ```airplane_perf``` in your workspace. 


```

View(airplane_perf)

```

b) Form a dataset ```airplane_full.csv``` 
by ```merge```ing all three datasets. 
Store the new dataset 
in a data frame called ```airplane_full``` in your workspace. 


```

View(airplane_full) 

```

c) Calculate and copy the printed output from a ```summary``` 
of the new variables. 
Use this to get familiar with the contents of the dataset. 


```

> summary(airplane_full)
    0Sale_ID          age            price             pass      
 Min.   :101.0   Min.   :13.00   Min.   :  9000   Min.   :2.000  
 1st Qu.:149.5   1st Qu.:19.00   1st Qu.: 19250   1st Qu.:4.000  
 Median :198.0   Median :22.00   Median : 33500   Median :4.000  
 Mean   :198.0   Mean   :24.61   Mean   : 50237   Mean   :4.287  
 3rd Qu.:246.5   3rd Qu.:30.00   3rd Qu.: 73500   3rd Qu.:6.000  
 Max.   :295.0   Max.   :44.00   Max.   :254000   Max.   :6.000  
      wtop           fixgear           tdrag             horse      
 Min.   :0.0000   Min.   :0.0000   Min.   :0.00000   Min.   :108.0  
 1st Qu.:0.0000   1st Qu.:0.0000   1st Qu.:0.00000   1st Qu.:180.0  
 Median :0.0000   Median :0.0000   Median :0.00000   Median :210.0  
 Mean   :0.4615   Mean   :0.4513   Mean   :0.05641   Mean   :219.2  
 3rd Qu.:1.0000   3rd Qu.:1.0000   3rd Qu.:0.00000   3rd Qu.:285.0  
 Max.   :1.0000   Max.   :1.0000   Max.   :1.00000   Max.   :310.0  
      fuel           ceiling          cruise     
 Min.   : 29.00   Min.   : 8500   Min.   : 97.0  
 1st Qu.: 51.00   1st Qu.: 9700   1st Qu.:119.0  
 Median : 68.00   Median :13000   Median :144.0  
 Mean   : 67.82   Mean   :14007   Mean   :144.7  
 3rd Qu.: 84.00   3rd Qu.:16800   3rd Qu.:170.0  
 Max.   :130.00   Max.   :28000   Max.   :221.0  


```


d) Estimate a regression model to predict ```price``` as a function of 
```age```, ```pass```, ```wtop```, ```fixgear```, 
and ```tdrag```, 
as well as ```horse```, ```fuel```, ```ceiling```, and ```cruise```.
Copy the printed estimation output from the ```summary``` command. 


```

Coefficients:
(Intercept)          age        price         pass         wtop      fixgear  
  6.064e+01   -8.923e-01   -6.924e-05    2.026e+00   -1.437e+00    4.060e+01  
      tdrag        horse         fuel      ceiling       cruise  
 -1.535e+01    3.943e-01    3.841e-01    1.279e-03    4.789e-02  


```






## Part B: Advanced Regression Modelling


### Question 4

a) Create new variables 
	```log_price```, ```log_age```, ```log_horse```, 
	```log_fuel```, ```log_ceiling```, and ```log_cruise```
	from the variables 
	```price```, ```age```, ```horse```, 
	```fuel```, ```ceiling```, and ```cruise```, 
	using the logarithm function ```log()``` in ```R``` 
	to create these new variables. 


```

   `0Sale_ID`   age price   horse  fuel ceiling cruise
        <dbl> <dbl> <dbl>  <dbl> <dbl>   <dbl>  <dbl>
 1       4.62  3.09  9.10   4.72  3.40    9.05   4.68
 2       4.62  3.04  9.21   4.72  3.40    9.05   4.68
 3       4.63  3.00  9.35   4.72  3.40    9.05   4.68
 4       4.64  2.94  9.47   4.72  3.40    9.05   4.71
 5       4.65  3.09  9.74   4.70  3.66    9.05   4.67
 6       4.66  3.04  9.80   4.70  3.66    9.05   4.67
 7       4.67  3.00  9.85   4.70  3.66    9.05   4.67
 8       4.68  2.94  9.93   4.70  3.66    9.05   4.67
 9       4.69  2.89 10.1    4.70  3.66    9.05   4.67
10       4.70  2.83 10.2    4.68  3.66    9.05   4.66


```

b) Calculate and copy the printed output from a ```summary``` 
of the new variables. 
Use this to get familiar with the contents of the dataset. 


```

> summary(log(airplane_full))
    0Sale_ID          age            price                    
 Min.   :4.615   Min.   :2.565   Min.   : 9.105     
 1st Qu.:5.007   1st Qu.:2.944   1st Qu.: 9.865     
 Median :5.288   Median :3.091   Median :10.419     
 Mean   :5.245   Mean   :3.166   Mean   :10.519     
 3rd Qu.:5.507   3rd Qu.:3.401   3rd Qu.:11.205     
 Max.   :5.687   Max.   :3.784   Max.   :12.445     
     horse            fuel      
Min.   :4.682   Min.   :3.367  
1st Qu.:5.193   1st Qu.:3.932  
Median :5.347   Median :4.220  
Mean   :5.349   Mean   :4.169  
3rd Qu.:5.652   3rd Qu.:4.431  
Max.   :5.737   Max.   :4.868  
    ceiling           cruise     
 Min.   : 9.048   Min.   :4.575  
 1st Qu.: 9.180   1st Qu.:4.779  
 Median : 9.473   Median :4.970  
 Mean   : 9.499   Mean   :4.953  
 3rd Qu.: 9.729   3rd Qu.:5.136  
 Max.   :10.240   Max.   :5.398 


```


c) Estimate a regression model to predict ```log_price``` as a function of 
	```log_age```, ```pass```, ```wtop```, ```fixgear```, 
	and ```tdrag```, 
	as well as 
	```log_horse```, ```log_fuel```, ```log_ceiling```, 
	and ```log_cruise```. 
	Copy the printed estimation output from the ```summary``` command. 


```

Coefficients:
                     Estimate Std. Error t value Pr(>|t|)    
(Intercept)         4.001e+00  5.227e-02 129.499  < 2e-16 ***
log_age             1.155e-02  1.082e-03  11.721  < 2e-16 ***
pass                -1.236e-05  4.378e-06  -6.247 4.49e-12 **
wtop                -3.986e-02  4.428e-03  -8.801  < 2e-16 
fixgear             -3.677e-05  8.255e-06  -3.337 2.06e-05 **
log_horse           5.349e-01  6.070e-02   7.798  6.06e-11 *
log_fuel            2.472e-01  5.905e-02   5.652  5.20e-05 ***
log_ceiling         2.897e-01  1.422e-01   2.304  0.18335  .  
log_cruise          -2.100e-01  6.615e-02  -2.814 0.03387 *  
  

```


d) If you notice that any coefficients are statistically insignificant, 
	estimate the model by removing them one at a time. 
	For each variable removed, 
	determine whether the variable should be removed 
	by considering the four specification criteria: 
		statistically significant $t$-statistics, 
		an increase in ```R-bar-squared```, 
		a good theoretical justification, and 
		no large change in the other coefficients.


```

Enter a description of your sequence of adjustments
to the regression model here.
Be sure to address the four specification criteria
described above.

In this case, I would consider removing log_ceiling altogether from the regression
model due it its lack of significance.


```

Next regression model:

```

log_ceiling         2.897e-01  1.422e-01   2.304  0.18335 


```

Next regression model, if necessary:

```

N/A


```

Next regression model, if necessary:

```

N/A


```

Next regression model, if necessary:

```

N/A


```



e) Print the output from a ```summary``` of the regression results
of your final regression model.


```

Coefficients:
(Intercept)          age         pass      fixgear        tdrag        horse  
 -37099.226    -2380.156     6630.548   -23155.580   -49577.691      181.652  
       fuel      ceiling       cruise  
     -6.149        1.403      495.177  


```

f) Finally, for each of the variables in the datasets, 
	list those that are positively related to airplane prices,
	negatively related to airplane prices, 
	and statistically unrelated to airplane prices. 


```

Positively related include: age, log_age, log_horse, log_fuel, fixgear

Negatively related include: pass, wtop, tdrag, 

Unrelated: log_ceiling

```




## Part C: Version Control

### Question 5

Push your completed files to the ```final_exam``` folder 
in your private GitHub repository.