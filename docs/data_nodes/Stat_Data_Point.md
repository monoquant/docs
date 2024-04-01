## What is a Statistical (Stat) Data Point?

Stat Data Point allows you to apply common statistical methods (mean, standard deviation (std), sum, minimum (min), 
maximum (max)) to your data over rolling window of your choice. Here are a few examples:

<img src="/data_nodes/images/stat_dp_mean_example.png" />

### MEAN with rolling of 5
| #  | number_of_sell_trades | STAT_DP |
|----|:---------------------:|:-------:|
| 1  |          25           |   NA    |
| 2  |          12           |   NA    |
| 3  |          40           |   NA    |
| 4  |          95           |   NA    |
| 5  |          86           |  51.6   |
| 6  |          75           |  61.6   |
| 7  |          30           |  65.2   |
| 8  |          45           |  66.2   |
| 9  |          39           |  55.0   |
| 10 |          28           |  43.4   |

### MIN with rolling of 5
| #  | number_of_sell_trades | STAT_DP |
|----|:---------------------:|:-------:|
| 1  |          25           |   NA    |
| 2  |          12           |   NA    |
| 3  |          40           |   NA    |
| 4  |          95           |   NA    |
| 5  |          86           |   12    |
| 6  |          75           |   12    |
| 7  |          30           |   30    |
| 8  |          45           |   30    |
| 9  |          39           |   30    |
| 10 |          28           |   30    |

### SUM with rolling of 5
| #  | number_of_sell_trades | STAT_DP |
|----|:---------------------:|:-------:|
| 1  |          25           |   NA    |
| 2  |          12           |   NA    |
| 3  |          40           |   NA    |
| 4  |          95           |   NA    |
| 5  |          86           |  258.0  |
| 6  |          75           |  308.0  |
| 7  |          30           |  326.0  |
| 8  |          45           |  331.0  |
| 9  |          39           |  275.0  |
| 10 |          28           |  217.0  |


Standard Deviation is the only option that is different from the rest because you need to specify 2 additional 
parameters - Band (Lower or Upper) and STD Multiplier to be used in the calculation.
Here is an example of Standard Deviation with the multiplier of 2. n_trades is the data source that you've passed to 
the Stat Data Point node, and with multiplier of 2 you can choose either and Upper (orange) band or a Lower (green) band.

<img src="/data_nodes/images/stat_dp_std_example.png" />

<img src="/data_nodes/images/stat_data_point_std_example_chart.png" />



