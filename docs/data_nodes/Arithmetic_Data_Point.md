## What is an Arithmetic Data Point?

Arithmetic Data Point is a node that accepts one or two inputs and allows you to modify the data using arithmetic 
operators such as [ + - * / ].

For example, you can pass 2 Data Point nodes to an Arithmetic Data Point selecting the division (/) sign, and you 
can divide DataPoint A by the DataPoint B.

1st = (Data Type = **buy_amount**, Aggregation = **sum**)

2nd = (Data Type = **sell_amount**, Aggregation = **sum**)  

<img src="/data_nodes/images/arithmetic_dp.png" width="350" height="300" /> 

Now you can spot places where buy_amount is significantly greater than the sell_amount, giving you an idea about the 
demand or vice versa. You can use this as a signal by itself, or as a part of a greater combination of signals

##### Arithmetic Data Point Example
| #  |  buy_amount   | sell_amount | arithmetic_dp |
|----|:-------------:|:-----------:|:-------------:|
| 1  |     25.10     |    23.12    |    1.0856     |
| 2  |     12.80     |    15.10    |    0.8476     |
| 3  |     40.59     |    30.80    |    1.3178     |
| 4  |     95.12     |    35.95    |    2.6458     |
| 5  |     86.31     |    40.53    |    2.1295     |
| 6  |     75.10     |    50.68    |    1.4818     |
| 7  |     30.20     |    30.89    |    0.9776     |
| 8  |     45.90     |    35.40    |    1.2966     |
| 9  |     39.50     |    50.15    |    0.7876     |
| 10 |     28.17     |    32.65    |    0.8627     |

<img src="/data_nodes/images/arithmetic_dp_and_create_signal.png" width="450" height="300" /> 
