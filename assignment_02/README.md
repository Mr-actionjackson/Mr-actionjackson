# Assignment 2

Complete the exercise described in the pdf above and enter your answers in 
the spaces below.

## Running the Script as Given

Run the entire script and compare 
the output from ```summary(lm_full_model)```, 
which includes all variables, 
with that from ```summary(lm_no_damage)```, 
which omits the damage indicator. 
If there are no cars with damage in your simulation, 
run the script again to take another draw.


a. Copy and paste the regression model estimates after the commands
```summary(lm_full_model)``` and ```summary(lm_no_damage)```. 

```
Copy your results here.
Call:
lm(formula = car_price ~ mileage + accident + damage, data = car_data)

Residuals:
   Min     1Q Median     3Q    Max 
-10997  -2771    -77   2756   9701 

Coefficients:
              Estimate Std. Error t value Pr(>|t|)    
(Intercept)  4.783e+04  1.825e+03  26.208  < 2e-16 ***
mileage     -1.525e-01  3.643e-02  -4.185 6.33e-05 ***
accident    -4.796e+03  8.600e+02  -5.577 2.25e-07 ***
damage      -2.150e+04  2.445e+03  -8.795 5.75e-14 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 4068 on 96 degrees of freedom
Multiple R-squared:  0.6266,	Adjusted R-squared:  0.6149 
F-statistic: 53.69 on 3 and 96 DF,  p-value: < 2.2e-16```


b. Compare the estimated coefficient for ```ACCIDENT``` 
with and without the damage variable. 
How does this relate to the coefficient for ```DAMAGE```?
Call:
lm(formula = car_price ~ mileage + accident, data = car_data)

Residuals:
     Min       1Q   Median       3Q      Max 
-21636.5  -2701.4    273.2   3474.8   9850.4 

Coefficients:
              Estimate Std. Error t value Pr(>|t|)    
(Intercept)  4.715e+04  2.437e+03  19.343  < 2e-16 ***
mileage     -1.383e-01  4.866e-02  -2.842  0.00547 ** 
accident    -6.456e+03  1.122e+03  -5.755 1.01e-07 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 5439 on 97 degrees of freedom
Multiple R-squared:  0.3256,	Adjusted R-squared:  0.3117 
F-statistic: 23.42 on 2 and 97 DF,  p-value: 5.031e-09

```
Type your response here.
```


c. Compare the values of 
```Multiple R-squared``` and ```Adjusted R-squared``` for the two models. 
Which model do you recommend (pretending that you don't know the true model)? 

```
Type your response here.
```




## Running the Script after Modification


d. Copy and paste the new regression model estimates after the commands
```summary(lm_full_model)``` and ```summary(lm_no_damage)```. 

```
Copy your results here.
```


e. For this new set of regressions, compare the estimated coefficient 
for ```ACCIDENT``` with and without the damage variable. 
How does this relate to the new coefficient for ```DAMAGE```?

```
Type your response here.
```


f. Compare the values of 
```Multiple R-squared``` and ```Adjusted R-squared``` for the two models. 
Now which model do you recommend (pretending that you don't know the true model)? 

```
Type your response here.
```

