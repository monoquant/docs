## What is a Technical Analysis (TA) Data Point?

TA data point allows you to use traditional technical analysis indicators, such as Moving Averages, Relative Strength
Index, Average True Range and many more!

Most traditional TA indicators require an input such as Closing price which is used to compute an indicator, 
so you only need to attach the Data Point with **close** or _any_ of the other datapoints. 

Like this:
 
![simple moving average example](images/sma_example.png)

In addition, you can also choose from a selection of common candlestick patterns such as Hanging Man, Morning Star, and 
others. 

These would return 1 when the system detects the formation that you've selected and 0 when there is no such formation.

To use Candlestick patterns as a signal - simply choose the pattern you want in the TA Node, attach it to the Create Signal
Node, and in the comparison operator choose **==** and for the Datapoint B choose **1**.

![simple moving average example](images/candlestick_pattern.png)

## MA Mode(s)
When you see the option for changing the MA Mode of an indicator, this gives you the freedom, to choose the underlying Moving Average Type to use, the available Moving Average Types are:

## Lag(s)

| Strategy Builder Name       | Full Name | Description                  |
|:------------|:--------|:-----------------------------|
| `dema`  | Double Exponential Moving Average       | This type computes a faster and more responsive moving average by using two exponential moving averages (EMAs) to reduce lag. |
| `ema`   | Exponential Moving Average      | This type places a greater weight and significance on the most recent data points. It's more responsive to new information compared to a simple moving average.  |
| `fwma`   | Fibonacci Weighted Moving Average      | This type applies weights based on Fibonacci ratios, giving more importance to certain periods based on these ratios.  |
| `hma`   | Hull Moving Average      | Designed to reduce the lag from traditional moving averages, it combines several weighted averages for increased responsiveness.  |
| `linreg`   | Linear Regression Moving Average       | This approach fits a linear regression line to the price data over a specified period, projecting it forward as a moving average.  |
| `midpoint`   |  Midpoint Moving Average    | This type calculates the midpoint of the data points within the window, effectively averaging the highest and lowest values.  |
| `pwma`   |  Polynomial Weighted Moving Average     | This moving average uses polynomial functions to determine the weighting of each data point in the window.  |
| `rma`   |   Running Moving Average    | A variant of the exponential moving average that focuses on smoothing out price data over time, typically with less emphasis on more recent data compared to EMA.  |
| `sinwma`   |     Sine Weighted Moving Average  | Utilizes sine functions to weight the data, providing a unique smoothing effect that emphasizes the middle of the data set.  |
| `sma`   |   Simple Moving Average      | Averages the data over a specific number of time periods equally, giving an overall trend by smoothing out price data.  |
| `swma`   |  Sine Weighted Moving Average   | Similar to SINWMA, this uses sine functions to adjust the weighting of the data points for the average calculation.  |
| `t3`   | Triple Exponential Moving Average     | Developed by Tim Tillson, it uses multiple EMAs of EMAs to smooth the data and reduce lag more significantly than a single or double EMA. |
| `tema`   | Triple Exponential Moving Average      | This extends the concept of an exponential moving average by three times, attempting to reduce lag more than the double exponential moving average. |
| `trima`   | Triangular Moving Average      | This average is the result of double smoothing (or averaging) of the data, which tends to create a smoother line that lags more than an SMA or EMA.  |
| `vidya`   | Variable Index Dynamic Average      | Developed by Tushar Chande, this type of moving average adjusts its weighting based on market volatility using the Chande Momentum Oscillator as part of its formula.  |
| `wma`   | Weighted Moving Average      | Places more weight on recent data points within the moving average period. Unlike the SMA, it's not equally weighted.  |
| `zlma`   | Zero-Lag Moving Average      | Designed to eliminate the lag associated with moving averages by adjusting the calculation based on recent price changes.  |

## Available Indicators

### Awesome Oscillator (AO)
The Awesome Oscillator is a market momentum indicator designed to measure market momentum to help confirm trends or anticipate possible reversals.

| Input       | Default | Description                  |
|:------------|:--------|:-----------------------------|
| `Short MA`  | 5       | Period for the short moving average |
| `Long MA`   | 34      | Period for the long moving average  |

| Output Example | Type  | Description                                                                |
|:---------------|:------|:---------------------------------------------------------------------------|
| `-0.005`       | Float | A negative value like -0.005 indicates bearish market momentum, while a positive value indicates bullish momentum |


### Absolute Price Oscillator (APO)
The Absolute Price Oscillator (APO) is a momentum oscillator that calculates the difference between two moving averages (usually exponential), providing insights into the strength and direction of a trend.

This oscillator is especially useful for identifying trend reversals and confirming trading signals based on moving averages.

| Input        | Default | Description                   |
|:-------------|:--------|:------------------------------|
| `Fast`   | 12      | Period for the fast exponential moving average |
| `Slow`   | 26      | Period for the slow exponential moving average |
| `MA Mode`   | sma      | The type of Moving Average to use for calculating the Fast & Slow Inputs |

| Output Example | Type  | Description                                                                 |
|:---------------|:------|:----------------------------------------------------------------------------|
| `1.5`          | Float | A positive value like 1.5 suggests upward momentum, while a negative value indicates downward momentum |


### Bias Indicator
The Bias Indicator is a straightforward technical analysis tool used to determine the direction and strength of a market trend over a given period. It calculates the difference between the current closing price and the average price over a specified number of past days. This difference highlights whether the current price is above or below the historical average, indicating a bullish or bearish bias.

The Bias Indicator helps traders understand the underlying trend momentum and provides insights that can be used to anticipate future price movements. A positive value indicates that the current price is higher than the average, suggesting a bullish trend, while a negative value implies a bearish trend.

| Input        | Default | Description                                                         |
|:-------------|:--------|:--------------------------------------------------------------------|
| `Length`     | 14      | The number of periods used to calculate the moving average from which the current price is subtracted to derive the Bias. |

| Output Example            | Type  | Description                                                                       |
|:--------------------------|:------|:----------------------------------------------------------------------------------|
| `Bias: +2.5`              | Float | Indicates the current Bias value. A positive number suggests a bullish bias in the market, while a negative value indicates a bearish bias.


### Balance of Power (BoP)
The Balance of Power (BoP) is an indicator used to measure the market strength of buyers versus sellers by comparing the extent to which prices are pushed to levels above or below the opening price.

The BoP can be useful for identifying the underlying strength or weakness in price movements, which might not be evident from the price alone.

| Output Example | Type  | Description                                                                 |
|:---------------|:------|:----------------------------------------------------------------------------|
| `-0.25`        | Float | A negative value like -0.25 indicates stronger selling pressure, while a positive value suggests stronger buying pressure |


### Commodity Channel Index (CCI)
The Commodity Channel Index (CCI) is a versatile indicator used to identify new trends or warn of extreme conditions. It compares the current price to an average price over a specific period and highlights deviations from that average, adjusted by the typical price deviation over the same period.

This configuration makes the CCI particularly effective in markets that display cyclic or seasonal characteristics, helping traders to spot the onset of bullish and bearish phases.

| Input        | Default | Description                   |
|:-------------|:--------|:------------------------------|
| `Length`     | 14      | The number of periods to calculate the average price |
| `C`          | 0.015   | The constant used to scale the deviation from the mean |

| Output Example | Type  | Description                                                                 |
|:---------------|:------|:----------------------------------------------------------------------------|
| `120`          | Float | A value like 120 indicates that the price is well above the historical average, suggesting overbought conditions |


### Chande Momentum Oscillator (CMO)
The Chande Momentum Oscillator (CMO) is designed to capture the momentum of a security over a specified period, helping to identify trend strength and potential reversals. Created by Tushar Chande, the oscillator measures the difference between gains and losses during the period and normalizes this value to oscillate between +100 and -100.

The CMO is useful for identifying overbought or oversold conditions and can be an essential tool for traders looking to gauge the velocity of price changes.

| Input        | Default | Description                   |
|:-------------|:--------|:------------------------------|
| `Length`     | 20      | The look-back period for measuring momentum |

| Output Example | Type  | Description                                                                 |
|:---------------|:------|:----------------------------------------------------------------------------|
| `-100 to 100`           | Float | A value of 30 suggests moderate upward momentum, while a value closer to +100 indicates stronger bullish momentum |


### Center of Gravity (COG)
The Center of Gravity (COG) indicator, developed by John Ehlers, is designed to identify potential turning points in the price of a financial asset. It uses a polynomial regression to calculate the center of price over a specific period, aiming to pinpoint the mean price as a potential area where the price may revert.

The COG indicator is particularly useful for traders who are looking to determine overbought or oversold conditions, and for setting stop-loss or profit-target levels.


| Input        | Default | Description                   |
|:-------------|:--------|:------------------------------|
| `Length`     | 10      | The number of periods used for the polynomial regression calculation |

| Output Example | Type  | Description                                                                 |
|:---------------|:------|:----------------------------------------------------------------------------|
| `1.3450`       | Float | A calculated COG value of 1.3450 indicates the estimated center or average price level, suggesting potential reversal points near this value |


### Coppock Curve
The Coppock Curve is a momentum indicator that combines the rate of change (ROC) for two different periods and a simple moving average (SMA) to gauge long-term price movements, particularly to identify potential bull market signals. It calculates the ROC for both a fast and a slow period and then applies an SMA to smooth the combined ROC values.

This configuration of the Coppock Curve is useful for spotting long-term upward trends and is traditionally used to identify buying opportunities in equity indices following major market lows.

| Input        | Default | Description                   |
|:-------------|:--------|:------------------------------|
| `Fast`   | 11      | The period for the faster rate of change calculation |
| `Slow`   | 14      | The period for the slower rate of change calculation |
| `Length`     | 10      | The period for the simple moving average applied to the sum of ROCs |

| Output Example | Type  | Description                                                                 |
|:---------------|:------|:----------------------------------------------------------------------------|
| `5`            | Float | A positive value like 5 suggests upward momentum, indicating potential bullish market conditions |



### Correlation Trend Indicator (CTI)
The Correlation Trend Indicator (CTI) is designed to measure the strength and direction of a trend by analyzing the correlation between current price movements and a predetermined number of previous price movements. This indicator provides insights into the persistence of a trend and helps in determining trend stability or potential reversals.

The CTI is particularly useful for traders looking to confirm the reliability of a trend or to anticipate changes based on decreasing correlation values, signaling weakening trend momentum.

| Input        | Default | Description                   |
|:-------------|:--------|:------------------------------|
| `Length`     | 20      | The look-back period for measuring the correlation of price movements |

| Output Example | Type  | Description                                                                 |
|:---------------|:------|:----------------------------------------------------------------------------|
| `0.85`         | Float | A high positive value like 0.85 indicates a strong positive correlation, suggesting a stable and persistent uptrend |


### Efficiency Ratio (ER)
The Efficiency Ratio (ER), developed by Perry Kaufman, is an indicator used to measure the efficiency of price movements and determine the strength of a trend. It is calculated by dividing the absolute price change over a specific period by the cumulative sum of the period's price changes, providing a ratio that reflects the directness and efficiency of the trend.

| Input        | Default | Description                   |
|:-------------|:--------|:------------------------------|
| `Length`     | 10      | The number of bars used to calculate the total price movement |

| Output Example | Type  | Description                                                                 |
|:---------------|:------|:----------------------------------------------------------------------------|
| `0.75`         | Float | A value of 0.75 indicates a high efficiency of the trend, meaning the market is moving predominantly in one direction with minimal noise |

The Efficiency Ratio helps in identifying smoother and more sustainable trends, and it is particularly valuable in adaptive trading systems where the indicator's output can be used to adjust the sensitivity of other trading strategies.

### Fisher Transform
The Fisher Transform is a technical analysis tool designed to identify potential price reversals by transforming prices into a Gaussian normal distribution. This transformation sharpens the peaks and troughs of the price waves, making turning points easier to detect.

This configuration allows traders to use both the Fisher and the Signal lines to gauge momentum shifts and potential reversal points more effectively.
The Fisher Transform, with its signal line, helps traders in spotting early signs of market turning points, allowing for potentially earlier entries or exits than other momentum indicators.

| Input              | Default | Description                                                                  |
|:-------------------|:--------|:-----------------------------------------------------------------------------|
| `Datapoint to Use` | Fisher  | Which data series to return, the Fisher value or the Signal value            |
| `Length`           | 9       | The number of bars used for the initial transformation calculation           |
| `Signal`           | 3       | The smoothing period applied to the Fisher Transform to generate signal lines|

| Output Example    | Type  | Description                                                                   |
|:------------------|:------|:------------------------------------------------------------------------------|
| `Fisher: 1.2`     | Float | Indicates a potential bullish turning point                                   |
| `Signal: 0.8`     | Float | A signal value of 0.8, serving as a smoother, delayed confirmation of trends  |



### KDJ Indicator
The KDJ Indicator is an advanced version of the Stochastic Oscillator, enhanced with a unique 'J' line to identify potential price reversals by measuring the divergence of momentum. It uses a single look-back period for its calculations and incorporates a signal line to smooth out the readings for improved reliability.

This setup for the KDJ Indicator provides a detailed view of market momentum and potential turning points, making it a valuable tool for traders monitoring volatile markets.

| Input        | Default | Description                   |
|:-------------|:--------|:------------------------------|
| `Period`     | 14      | The look-back period used to compute the %K line and %D line |
| `Signal`     | 3       | The smoothing period applied to the %D line, enhancing signal clarity |

| Output Example | Type  | Description                                                                 |
|:---------------|:------|:----------------------------------------------------------------------------|
| `K: 30`        | Float | The %K line value, representing the position of the closing price in relation to the high-low range  |
| `D: 28`        | Float | The %D line value, which is a smoothed version of %K, indicating trend strength |
| `J: 34`        | Float | The J line value, calculated as \( J = 3K - 2D \), highlights potential reversals by measuring divergence |


### Know Sure Thing (KST)
The Know Sure Thing (KST) is a comprehensive momentum oscillator developed by Martin Pring that combines weighted rates of change (ROC) with specific smoothing periods (SMA) to create a robust indicator of market momentum. It incorporates multiple ROC calculations, each smoothed with its own moving average, to identify major trend changes and generate timely buy or sell signals.

The KST's ability to integrate different ROC lengths and their smoothing periods allows for nuanced detection of trend strengths and reversals, making it a valuable tool in diverse trading conditions.

| Input        | Default | Description                                         |
|:-------------|:--------|:----------------------------------------------------|
| `roc_1`      | 10      | The period for the first rate of change calculation |
| `roc_2`      | 15      | The period for the second rate of change calculation |
| `roc_3`      | 20      | The period for the third rate of change calculation |
| `roc_4`      | 30      | The period for the fourth rate of change calculation |
| `sma_1`      | 10      | The smoothing period for the first ROC |
| `sma_2`      | 10      | The smoothing period for the second ROC |
| `sma_3`      | 10      | The smoothing period for the third ROC |
| `sma_4`      | 15      | The smoothing period for the fourth ROC |
| `Signal`     | 9       | The smoothing period applied to the composite KST line |

| Output Example | Type  | Description                                                                 |
|:---------------|:------|:----------------------------------------------------------------------------|
| `KST: 20`      | Float | A positive KST value like 20 indicates strong bullish momentum, while a negative value would suggest bearish momentum |
| `Signal: 18`   | Float | The signal line, a moving average of the KST, which can trigger trading signals when crossed by the KST line |



### MACD (Moving Average Convergence Divergence)
The MACD (Moving Average Convergence Divergence) is one of the most popular and broadly used momentum indicators in technical analysis. It measures the relationship between two moving averages of a security's price and is used to identify potential buy or sell signals.

The MACD is especially valuable for spotting changes in the strength, direction, duration, and momentum of a stock's price trend. Its simplicity and effectiveness make it a favorite among many traders.

| Input        | Default | Description                   |
|:-------------|:--------|:------------------------------|
| `Fast`| 12      | The period for the fast exponential moving average (EMA) |
| `Slow`| 26      | The period for the slow exponential moving average (EMA) |
| `Signal` | 9    | The period for the signal line, which is an EMA of the MACD line |

| Output Example | Type  | Description                                                                 |
|:---------------|:------|:----------------------------------------------------------------------------|
| `MACD: 0.5`    | Float | A positive MACD value like 0.5 suggests upward price momentum, indicating a potential buy signal |
| `Signal: 0.3`  | Float | The signal line value of 0.3, when crossed upwards by the MACD, further confirms the buy signal |

### Momentum
The Momentum indicator is a simple yet powerful tool used in technical analysis to measure the rate of change in a asset's price over a specific period. It helps traders identify the speed at which prices are moving, indicating whether the current trend is likely to continue or reverse.

The Momentum indicator is particularly useful for identifying potential entry and exit points based on when the indicator reaches extreme levels or shows divergence from the price movement.

| Input        | Default | Description                   |
|:-------------|:--------|:------------------------------|
| `Period`     | 14      | The look-back period over which the momentum is calculated |

| Output Example | Type  | Description                                                                 |
|:---------------|:------|:----------------------------------------------------------------------------|
| `Momentum: 10.5` | Float | A positive momentum value like 10.5 suggests increasing prices, indicating bullish momentum. Negative values indicate bearish momentum. |


### Percentage Price Oscillator (PPO)
The Percentage Price Oscillator (PPO) is a momentum oscillator that measures the percentage difference between two moving averages of a security's price. It is used to identify trend directions, momentum, and potential price reversals by highlighting convergence, divergence, and crossovers of the moving averages.

| Input         | Default | Description                                                         |
|:--------------|:--------|:--------------------------------------------------------------------|
| `Fast` | 12      | The period for the fast moving average                              |
| `Slow` | 26      | The period for the slow moving average                              |
| `Signal`| 9      | The period for the signal line, which is an EMA of the PPO line     |
| `MA Mode`     | sma     | The type of Moving Average to use for calculating the Fast & Slow Inputs |

| Output Example | Type  | Description                                                                 |
|:---------------|:------|:----------------------------------------------------------------------------|
| `PPO: 1.2%`    | Float | A positive PPO value like 1.2% suggests upward momentum, with the fast MA above the slow MA |
| `Signal: 0.8%` | Float | The signal line value of 0.8%, which can trigger buy or sell signals when crossed by the PPO line |

The flexibility of choosing between different types of moving averages (such as SMA, EMA) in the `MA Mode` enhances the PPO's adaptability to various trading strategies and market conditions, making it a versatile tool for technical analysts.

### Psychological Line (PSY)
The Psychological Line (PSY) is a technical analysis indicator that measures the percentage of bars that close above the previous bar over a specified period. It aims to provide insights into the market sentiment by quantifying the bullishness or bearishness of traders.

The Psychological Line is particularly useful for identifying changes in market mood and can serve as a contrarian indicator when extreme values are reached, such as values above 80% (over-optimism) or below 20% (over-pessimism).

| Input        | Default | Description                   |
|:-------------|:--------|:------------------------------|
| `Period`     | 14      | The number of bars used to calculate the percentage of up-closing bars |

| Output Example | Type  | Description                                                                 |
|:---------------|:------|:----------------------------------------------------------------------------|
| `PSY: 75%`     | Float | A value like 75% indicates that 75% of the bars in the period closed higher than their predecessors, suggesting a bullish sentiment |

### Percentage Volume Oscillator (PVO)
The Percentage Volume Oscillator (PVO) is a momentum oscillator that measures the percentage difference between two moving averages of volume, similar to how the Percentage Price Oscillator (PPO) measures price momentum. It is used to identify periods of expanding or contracting volume relative to the average, which can signal potential changes in market trends.

The PVO is especially useful in confirming price movements or spotting divergences where the price continues to rise while volume starts to fall, possibly indicating a weakening trend.

| Input         | Default | Description                                                         |
|:--------------|:--------|:--------------------------------------------------------------------|
| `Fast Length` | 12      | The period for the fast exponential moving average (EMA) of volume  |
| `Slow Length` | 26      | The period for the slow exponential moving average (EMA) of volume  |
| `Signal Length`| 9      | The period for the signal line, which is an EMA of the PVO line     |

| Output Example | Type  | Description                                                                 |
|:---------------|:------|:----------------------------------------------------------------------------|
| `PVO: 15%`     | Float | A positive PVO value like 15% suggests that volume is above the average, indicating increased market activity |
| `Signal: 10%`  | Float | The signal line value of 10%, which can signal buy or sell opportunities when crossed by the PVO line |

### Rate of Change (ROC)
The Rate of Change (ROC) is a momentum oscillator that measures the percentage change in price between the current price and the price a certain number of periods ago. It is used to identify the speed at which a security's price is changing, indicating strength or weakness in the market.

The ROC is particularly valuable for signaling potential buy or sell opportunities when it crosses above or below zero or shows divergence with the price (e.g., price continues to rise while ROC falls), potentially foreshadowing a price correction or reversal.

| Input        | Default | Description                   |
|:-------------|:--------|:------------------------------|
| `Length`     | 14      | The number of periods over which the price change is calculated |

| Output Example | Type  | Description                                                                 |
|:---------------|:------|:----------------------------------------------------------------------------|
| `ROC: 3.5%`    | Float | A positive ROC value like 3.5% indicates that the price has increased over the specified period, suggesting upward momentum |


### Relative Strength Index (RSI)
The Relative Strength Index (RSI) is a popular momentum oscillator that measures the speed and change of price movements to identify overbought or oversold conditions in the trading of an asset. It compares the magnitude of recent gains to recent losses to determine overbought or oversold conditions.

The RSI is useful for traders as it provides signals to buy when the indicator moves below 30 (indicating an oversold condition) and to sell when it moves above 70 (indicating an overbought condition). This helps traders in making decisions on timing their market entries and exits.

| Input        | Default | Description                   |
|:-------------|:--------|:------------------------------|
| `Period`     | 14      | The number of periods over which the RSI is calculated |

| Output Example | Type  | Description                                                                 |
|:---------------|:------|:----------------------------------------------------------------------------|
| `RSI: 70`      | Float | An RSI value of 70 typically suggests that the asset is becoming overbought, which may indicate a potential sell signal or a pullback in price |

### Relative Strength Extra (RSE)
The Relative Strength Extra (RSE) is an advanced version of the traditional Relative Strength Index (RSI). It integrates additional smoothing mechanisms to reduce volatility and improve the accuracy of trading signals. By comparing the average gains and losses over a specified period, RSE aims to provide a clearer view of overbought or oversold conditions.

The RSE enhances traditional RSI analysis by smoothing out the frequent oscillations associated with price movements, making it particularly useful for traders who seek more stable indicators to guide their trading decisions.

| Input        | Default | Description                   |
|:-------------|:--------|:------------------------------|
| `Period`     | 14      | The number of periods used to calculate the average gains and losses |

| Output Example | Type  | Description                                                                 |
|:---------------|:------|:----------------------------------------------------------------------------|
| `RSE: 65`      | Float | An RSE value of 65 suggests mild overbought conditions, potentially indicating a need for caution in buying or considering selling |


### Relative Vigor Index (RVI)
The Relative Vigor Index (RVI) is designed to measure the conviction of recent price action and predict the likelihood of its continuation based on the principle that prices tend to close higher than they open in bull markets and lower in bear markets. The RVI uses specific smoothing techniques to compare the closing price relative to the opening price over a set period.

This configuration of the RVI with an additional SWMA smoothing parameter helps enhance the accuracy of the indicator, making it more reliable for detecting trend continuations and potential reversals based on the momentum observed in the opening and closing prices.

| Input           | Default | Description                                                  |
|:----------------|:--------|:-------------------------------------------------------------|
| `Length`        | 10      | The number of periods used to calculate the initial RVI      |
| `SWMA Length`   | 4       | The smoothing length applied using a Simple Weighted Moving Average (SWMA) for the final calculation |

| Output Example  | Type  | Description                                                                      |
|:----------------|:------|:---------------------------------------------------------------------------------|
| `RVGI: 0.45`    | Float | Indicates the main RVI value; a positive figure suggests strong upward momentum  |
| `Signal: 0.40`  | Float | The Signal line, which is derived from the SWMA of the RVGI, helps confirm trends |

### Slope
The Slope indicator is a simple yet effective technical analysis tool used to measure the rate of price change over a specified period. It determines the direction and strength of a trend by calculating the slope of the regression line through the price data points.

The Slope indicator is particularly useful for identifying the trend direction and its relative strength. A steeper slope implies a stronger trend, whether upward or downward, providing traders with insights into potential continuations or reversals of current price movements.

| Input        | Default | Description                   |
|:-------------|:--------|:------------------------------|
| `Period`     | 14      | The number of periods used to calculate the slope of the price changes |

| Output Example | Type  | Description                                                                 |
|:---------------|:------|:----------------------------------------------------------------------------|
| `Slope: 0.05`  | Float | A positive slope value like 0.05 indicates an upward trend in the price movement, suggesting bullish conditions |

### SMI Ergodic Indicator
The SMI Ergodic Indicator is a sophisticated momentum oscillator that uses two smoothing periods to analyze price movements more accurately. It calculates the difference between the current close and the midpoint of the recent high/low range, scaled by the maximum difference within the same period. This provides a clear indication of trend strength and direction.

The SMI Ergodic Indicator is highly effective in identifying changes in momentum and potential reversals, making it valuable for both trend following and countertrend trading strategies.

| Input       | Default | Description                   |
|:------------|:--------|:------------------------------|
| `Fast`      | 5       | The period for the fast EMA of the price difference |
| `Slow`      | 20      | The period for the slow EMA of the price difference |
| `Signal`    | 5       | The smoothing period applied to the SMI to generate the signal line |
| `Scalar`    | 1       | A multiplier applied to normalize the SMI values |

| Output Example  | Type  | Description                                                                      |
|:----------------|:------|:---------------------------------------------------------------------------------|
| `SMI: 0.30`     | Float | A positive SMI value like 0.30 suggests bullish momentum, indicating upward trend |
| `Signal: 0.25`  | Float | The signal line value, which helps confirm trend changes when crossed by the SMI  |
| `Oscillator: 0.05` | Float | The oscillator value highlights short-term deviations from the SMI, useful for spotting immediate trading signals |


<!-- ### Schaff Trend Cycle
The Schaff Trend Cycle is an evolution of the popular MACD incorportating two
cascaded stochastic calculations with additional smoothing. -->

### Stochastic Oscillator
The Stochastic Oscillator is a widely used momentum indicator in technical analysis that measures the level of the closing price relative to the high-low range over a specific period. It helps identify overbought and oversold conditions by comparing where a security’s price closes relative to its price range.

This configuration of the Stochastic Oscillator allows for smoother and more accurate identification of potential buy and sell signals, as the additional smoothing helps reduce market noise and false signals.

| Input         | Default | Description                                                         |
|:--------------|:--------|:--------------------------------------------------------------------|
| `Fast K`      | 14      | The period for calculating the %K line, representing the raw stochastic value |
| `Slow D`      | 3       | The smoothing period applied to the %K to create the %D line, which is the signal line |
| `Smooth K`    | 3       | The smoothing period applied directly to the %K before calculating %D |

| Output Example | Type  | Description                                                                 |
|:---------------|:------|:----------------------------------------------------------------------------|
| `K: 20%`       | Float | A %K value of 20% indicates that the closing price is near the lower end of its 14-period high-low range, suggesting potential oversold conditions |
| `D: 22%`       | Float | The %D line at 22%, being derived from the smoothed %K, provides confirmation of the trend strength and potential reversal points |


### Stochastic RSI
The Stochastic RSI (StochRSI) is an oscillator that measures the level of the RSI relative to its high-low range over a specific period. It combines the benefits of the Stochastic Oscillator and the Relative Strength Index (RSI), making it more sensitive to fast-changing market conditions and useful for identifying overbought and oversold levels.

The Stochastic RSI is especially useful for traders focusing on momentum and seeking to capitalize on rapid shifts in RSI levels, offering faster signals than the standard RSI.

| Input         | Default | Description                                                         |
|:--------------|:--------|:--------------------------------------------------------------------|
| `Length` | 14 | The number of periods used to calculate the Stochastic values of the RSI |
| `RSI Length`  | 14      | The period for calculating the base Relative Strength Index (RSI)   |
| `Fast K`    | 3       | The smoothing period for the %K line, derived from the StochRSI     |
| `Fast D`    | 3       | The smoothing period for the %D line, which is the moving average of the %K line |
| `MA Mode`     | sma     | The type of Moving Average to use for calculating the Fast & Slow Inputs |

| Output Example | Type  | Description                                                                 |
|:---------------|:------|:----------------------------------------------------------------------------|
| `K: 80%`       | Float | A %K value of 80% suggests that the RSI is near the upper end of its range, indicating potential overbought conditions |
| `D: 75%`       | Float | The %D line at 75%, smoothing the %K output, helps confirm trend strength and signals potential reversal points |

### TD Sequential
The TD Sequential is a comprehensive technical analysis indicator created by Tom DeMark, designed primarily for identifying the timing of potential price reversals. It utilizes a unique approach involving two key sequences: the setup and the countdown. This indicator is highly effective in pinpointing the exhaustion points in price trends, allowing traders to anticipate potential turns with greater accuracy.

| Output Example | Type    | Description                                                                 |
|:---------------|:--------|:----------------------------------------------------------------------------|
| `Stoch RSI K`  | Float   | Indicates the Stochastic RSI %K value at the point of completion of a TD Sequential phase, providing momentum insight |
| `Stoch RSI D`  | Float   | Shows the Stochastic RSI %D value, which is a moving average of the %K, giving a smoothed perspective of momentum changes |

### Trix
The Trix indicator is a momentum oscillator that filters out market noise and identifies potential trend reversals by calculating the percentage rate of change of a triple exponentially smoothed moving average. The Trix oscillates around a zero line and can be used to generate signals through its interaction with a signal line.

| Input         | Default | Description                                                         |
|:--------------|:--------|:--------------------------------------------------------------------|
| `Length`      | 15      | The period used to calculate the triple exponential moving average |
| `Signal`      | 9       | The period for the signal line, which is a moving average of the Trix |

| Output Example | Type  | Description                                                                 |
|:---------------|:------|:----------------------------------------------------------------------------|
| `Trix: 0.5%`   | Float | A positive Trix value like 0.5% suggests upward momentum and a potential buy signal |
| `Signal: 0.3%` | Float | The signal line value, crossing above or below the Trix, can indicate buy or sell signals |

### True Strength Index (TSI)
The True Strength Index (TSI) is a momentum oscillator that helps identify trends and reversals by measuring the velocity and direction of price movements. The TSI uses two exponential moving averages: one to smooth the price changes (fast) and a second to smooth the first average (slow), which together refine the momentum signal.

The True Strength Index is especially useful for identifying overbought and oversold conditions, and the signal line enhances the timing of entry and exit points by providing additional confirmation of momentum shifts.

| Input        | Default | Description                                                         |
|:-------------|:--------|:--------------------------------------------------------------------|
| `Fast`       | 25      | The period for the fast exponential moving average of price changes |
| `Slow`       | 13      | The period for the slow exponential moving average applied to the fast EMA |
| `Signal`     | 7       | The period for the signal line, which is an exponential moving average of the TSI |
| `MA Mode`     | ema     | The type of Moving Average to use for calculating the Fast & Slow Inputs |

| Output Example | Type  | Description                                                                 |
|:---------------|:------|:----------------------------------------------------------------------------|
| `TSI: 20%`     | Float | A TSI value of 20% indicates strong upward momentum, suggesting a bullish trend |
| `Signal: 18%`  | Float | The signal line at 18%, when crossed by the TSI, can signal buy or sell opportunities depending on the direction of the cross |

### Ultimate Oscillator
The Ultimate Oscillator, developed by Larry Williams, is a momentum oscillator that combines information from three different time frames into a single value. This approach provides a more comprehensive view of market momentum by integrating short-term, intermediate, and long-term price movements.

The Ultimate Oscillator's unique integration of multiple time frames makes it particularly effective in reducing the false signals often associated with oscillators that only use a single time period, thereby improving the reliability of the trading signals it generates.

| Input        | Default | Description                                                         |
|:-------------|:--------|:--------------------------------------------------------------------|
| `Fast`       | 7       | The period for the fastest time frame used to capture short-term price movements |
| `Medium`     | 14      | The period for the medium time frame, balancing the short and long-term signals |
| `Slow`       | 28      | The period for the slowest time frame, reflecting long-term market trends |

| Output Example | Type  | Description                                                                 |
|:---------------|:------|:----------------------------------------------------------------------------|
| `Ultimate Oscillator: 55` | Float | A value of 55 suggests moderate bullish momentum. Values above 70 indicate overbought conditions, and below 30 indicate oversold conditions |


### Williams %R
Williams %R, also known as Williams Percent Range, is a momentum indicator that measures overbought and oversold levels by comparing the close relative to the high-low range over a specified period. It is similar to the Stochastic Oscillator but calculated differently, as it inverts the output to measure overbought levels at the lower end and oversold levels at the upper end of the scale.

Williams %R is particularly useful for identifying reversals, as values approaching the extremes of the scale (-0 and -100) often precede potential shifts in market direction. This makes it a valuable tool for traders looking to capitalize on price corrections.


| Input        | Default | Description                                                         |
|:-------------|:--------|:--------------------------------------------------------------------|
| `Length`     | 14      | The period over which the high-low range and closing price are considered |

| Output Example | Type  | Description                                                                 |
|:---------------|:------|:----------------------------------------------------------------------------|
| `Williams %R: -20` | Float | A value of -20 suggests that the price is near the high of its range, indicating potential overbought conditions. Values near -100 indicate oversold conditions, closer to the range's low. |


## Moving Averages

### Arnaud Legoux Moving Average (ALMA)
The Arnaud Legoux Moving Average (ALMA) is a sophisticated technical indicator that seeks to mitigate the inherent lag associated with traditional moving averages and improve smoothness while closely adhering to the price action. It incorporates a Gaussian distribution to weight the prices in the moving average calculation, placing greater emphasis on the middle portion, which can be offset to prioritize more recent data.

| Input                | Default | Description                                                         |
|:---------------------|:--------|:--------------------------------------------------------------------|
| `Length`             | 50      | The number of bars used to calculate the ALMA                       |
| `Sigma`              | 6       | The standard deviation for the Gaussian weighting function, affecting the smoothness and responsiveness |
| `Distribution Offset`| 0.85    | The offset of the Gaussian curve used in weighting, with 0 being the earliest price in the window and 1 the most recent |

| Output Example       | Type  | Description                                                                 |
|:---------------------|:------|:----------------------------------------------------------------------------|
| `ALMA: 1325.50`      | Float | Indicates the current value of the ALMA, providing a dynamic and responsive moving average line based on recent price trends |

The ALMA's use of Gaussian distribution and offset allows traders to fine-tune how the moving average responds to recent price changes, making it particularly useful for capturing trends in volatile markets without the delay typically associated with standard moving averages.

### Double Exponential Moving Average (DEMA)
The Double Exponential Moving Average (DEMA) is an advanced type of moving average that seeks to eliminate the lag associated with traditional moving averages by applying a double exponential smoothing to the price data. This makes the DEMA more responsive to changes in price, providing traders with quicker signals compared to a simple or exponential moving average.

The DEMA is particularly useful in fast-moving markets where traditional moving averages might lag, providing timely signals for entering or exiting trades. This makes it a favorite among traders who need to make quick decisions based on the latest market data.

| Input        | Default | Description                                                         |
|:-------------|:--------|:--------------------------------------------------------------------|
| `Length`     | 14      | The period over which the DEMA is calculated, influencing its sensitivity to price movements |

| Output Example | Type  | Description                                                                 |
|:---------------|:------|:----------------------------------------------------------------------------|
| `DEMA: 1050.75`| Float | Indicates the current value of the DEMA, suggesting a more immediate reflection of recent price changes compared to slower moving averages |


### Exponential Moving Average (EMA)
The Exponential Moving Average (EMA) is a type of moving average that gives more weight to recent price data in an attempt to make it more responsive to new information. This makes the EMA quicker to react to price changes than a simple moving average (SMA), which equally weights all values.

The EMA is particularly valuable for trading strategies that rely on identifying trends early, such as momentum trading. Its sensitivity to recent price dynamics helps traders capture potential profits from short-term movements without the delay inherent in SMAs.

| Input        | Default | Description                                                         |
|:-------------|:--------|:--------------------------------------------------------------------|
| `Length`     | 10      | The period over which the EMA is calculated, determining how much emphasis is put on recent price movements |

| Output Example | Type  | Description                                                                 |
|:---------------|:------|:----------------------------------------------------------------------------|
| `EMA: 1345.50` | Float | Indicates the current value of the EMA, providing a smoothed representation of recent price trends, which is helpful in identifying the direction of the market |



### Fibonacci Weighted Moving Average (FWMA)
The Fibonacci Weighted Moving Average (FWMA) is a specialized moving average that applies Fibonacci sequence numbers as weights to past price data. This technique emphasizes more recent prices in a manner proportionate to the Fibonacci sequence, making it highly responsive to recent market changes while still considering the influence of older prices.

The FWMA provides traders with a nuanced view of price trends, offering a more dynamic approach to moving averages by adjusting the impact of prices based on their age and importance as defined by Fibonacci ratios. This can be particularly useful in identifying support and resistance levels or confirming trend directions in volatile markets.

| Input        | Default | Description                                                         |
|:-------------|:--------|:--------------------------------------------------------------------|
| `Length`     | 21      | The period over which the FWMA is calculated, determining the responsiveness and smoothing effect based on Fibonacci weighting |

| Output Example | Type  | Description                                                                 |
|:---------------|:------|:----------------------------------------------------------------------------|
| `FWMA: 1120.30`| Float | Indicates the current value of the FWMA, reflecting a unique blend of recent and older prices weighted according to Fibonacci numbers |

### Gann High Low Activator
The Gann High Low Activator is an indicator that uses the high and low prices over a given period to generate trading signals. It primarily functions as a trend-following indicator, determining entry and exit points by overlaying a moving average line based on the highs and lows of the period.

The Gann High Low Activator is particularly effective in trending markets, helping traders to determine when to enter and exit trades based on the alignment of current prices with historical highs and lows. This method facilitates a clear strategy for capturing trends at their most profitable stages.

| Input        | Default | Description                                                         |
|:-------------|:--------|:--------------------------------------------------------------------|
| `High Length`| 13      | The period over which the high prices are considered to calculate the moving average |
| `Low Length` | 21      | The period over which the low prices are considered to calculate the moving average |

| Output Example | Type  | Description                                                                 |
|:---------------|:------|:----------------------------------------------------------------------------|
| `Line: 1320.50`| Float | Indicates the current value of the Gann High Low Activator line, suggesting the overall trend direction |
| `Long: True`   | Bool  | A boolean signal indicating a potential entry point for a long position if the current price is above the activator line |
| `Short: False` | Bool  | A boolean signal indicating a potential entry point for a short position if the current price is below the activator line |

### Hull Exponential Moving Average (HEMA)
The Hull Exponential Moving Average (HEMA) is a variation of the traditional moving average that aims to reduce lag, increase responsiveness, and eliminate noise. It combines the weighted moving average (WMA) and the exponential moving average (EMA) methodologies to provide a smoother and more accurate line that tracks the market more closely.

| Input        | Default | Description                                                         |
|:-------------|:--------|:--------------------------------------------------------------------|
| `Length`     | 20      | The period over which the HEMA is calculated, influencing its responsiveness and smoothness |

| Output Example | Type  | Description                                                                 |
|:---------------|:------|:----------------------------------------------------------------------------|
| `HEMA: 1320.75`| Float | Indicates the current value of the HEMA, suggesting a refined reflection of the market's recent movements |

The HEMA is particularly valuable for traders who need quick, reliable signals in fast-moving markets, as it effectively diminishes delay and helps to pinpoint trend changes and potential trading opportunities with greater precision.

### Holt-Winters Moving Average
The Holt-Winters Moving Average, often applied in time series analysis, is an advanced forecasting method that not only considers the overall trend but also seasonal variations. It employs a triple exponential smoothing approach, which adjusts three parameters to accommodate level, trend, and seasonal components of a series.

The Holt-Winters Moving Average is particularly useful in markets where seasonality plays a significant role, such as commodities or retail sales. It allows traders and analysts to predict future values with a high degree of accuracy by adjusting for expected seasonal changes in the data.

| Input        | Default | Description                                                         |
|:-------------|:--------|:--------------------------------------------------------------------|
| `NA`         | 0.2      | The smoothing factor for the level component                        |
| `NB`         | 0.1      | The smoothing factor for the trend component                        |
| `NC`         | 0.1      | The smoothing factor for the seasonal component                     |

| Output Example | Type  | Description                                                                 |
|:---------------|:------|:----------------------------------------------------------------------------|
| `Holt-Winters Line: 1040.30`| Float | Represents the forecasted value based on the level, trend, and seasonal adjustments, providing a comprehensive view of future market trends. |

### Jurik Moving Average (JMA)
The Jurik Moving Average (JMA) is a highly advanced smoothing technique that reduces lag brought about by traditional moving averages and minimizes the noise that can lead to false signals. It is renowned for its precision and smoothness, making it a preferred choice among traders who need quick and accurate market analysis.

The Jurik Moving Average is especially beneficial for traders looking to engage in high-frequency trading or those who require a moving average that provides both speed and precision without the lag associated with typical moving averages. Its ability to adapt the phase setting allows traders to fine-tune the indicator based on their specific trading strategy and market conditions.

| Input        | Default | Description                                                         |
|:-------------|:--------|:--------------------------------------------------------------------|
| `Length`     | 7      | The period over which the JMA is calculated, influencing how responsive it is to price changes |
| `Phase`      | 0       | An adjustable parameter that allows traders to shift the moving average curve forward or backward, affecting its responsiveness and smoothness |

| Output Example | Type  | Description                                                                 |
|:---------------|:------|:----------------------------------------------------------------------------|
| `JMA: 1322.50` | Float | Indicates the current value of the JMA, reflecting a highly responsive and smooth representation of the price trend |


### Kaufman Adaptive Moving Average (KAMA)
The Kaufman Adaptive Moving Average (KAMA) is designed to account for market noise and volatility by automatically adjusting its sensitivity. It adapulates more quickly to price changes when the price fluctuations are significant and decreases its sensitivity during less volatile periods. This adaptive approach helps to maintain a balance between responsiveness and smoothness in trending and consolidating markets.

KAMA's unique ability to adapt based on the rate of price change makes it particularly useful for traders who operate in markets that exhibit varying levels of volatility. It provides a dynamic approach to tracking market trends, enhancing the decision-making process by adjusting its sensitivity based on real-time market conditions.

| Input        | Default | Description                                                         |
|:-------------|:--------|:--------------------------------------------------------------------|
| `Length`     | 10      | The period over which the efficiency ratio (ER) and the smoothing constant are calculated |
| `Fast`       | 2       | The fastest reaction speed of the moving average to price changes  |
| `Slow`       | 30      | The slowest reaction speed of the moving average to price changes  |

| Output Example | Type  | Description                                                                 |
|:---------------|:------|:----------------------------------------------------------------------------|
| `KAMA: 1234.56`| Float | Indicates the current value of KAMA, showing its position relative to recent price movements, reflecting a balance between reaction speed and smoothing |


### Linear Regression Moving Average
The Linear Regression Moving Average (LRMA) is a statistical method used to determine the linear regression line over a specified number of data points, essentially predicting the future direction of prices based on past trends. It provides not only the regression line itself but also valuable derivatives like the slope and angle, which describe the rate of change and the steepness of the trend, respectively.

The Linear Regression Moving Average is particularly useful for identifying the underlying trend and its strength, offering insights that help traders to anticipate future market movements based on historical data. This makes it an excellent tool for strategic decision-making in both short-term and long-term trading scenarios.

| Input        | Default | Description                                                         |
|:-------------|:--------|:--------------------------------------------------------------------|
| `Length`     | 14      | The period over which the linear regression is calculated, affecting the precision and responsiveness of the analysis |

| Output Example | Type  | Description                                                                 |
|:---------------|:------|:----------------------------------------------------------------------------|
| `Default: 1320.75` | Float | Represents the current value of the linear regression line at the latest price point |
| `Slope: 0.05`      | Float | Indicates the rate of change of the regression line; a positive slope suggests an upward trend |
| `Angle: 3 degrees` | Float | Measures the angle of the slope in degrees, providing a visual gauge of trend strength |



### McGinley Dynamic Indicator
The McGinley Dynamic Indicator is a unique type of moving average that was designed to automatically adjust for shifts in market speed. Unlike traditional moving averages that respond uniformly to all price changes, the McGinley Dynamic changes its sensitivity based on the price action, aiming to minimize price separations and false signals commonly associated with moving averages.

The McGinley Dynamic's primary advantage is its ability to act as a more reliable filter of market noise than standard moving averages. It adjusts more closely with actual market rates, making it a valuable tool for investors looking to track underlying trends without the lag associated with traditional moving averages.

| Input        | Default | Description                                                         |
|:-------------|:--------|:--------------------------------------------------------------------|
| `Length`     | 14      | The period over which the McGinley Dynamic is calculated. This period influences the responsiveness of the indicator to market changes |

| Output Example | Type  | Description                                                                 |
|:---------------|:------|:----------------------------------------------------------------------------|
| `McGinley Dynamic: 1230.25` | Float | Represents the current value of the McGinley Dynamic, indicating where the smoothed and reactive price level stands relative to market conditions |


### Midpoint Price
The Midpoint Price indicator calculates the middle point of the price range over a specified period. This simple yet effective tool helps traders identify the average of the highest high and the lowest low, offering a clear view of the median price level during that time frame.

The Midpoint Price indicator is especially useful for traders who prefer a less complex method to determine the market's equilibrium point without the fluctuations of moving averages. It provides a steady reference point, helping to gauge the overall market sentiment and potential price levels for support or resistance.

| Input        | Default | Description                                                         |
|:-------------|:--------|:--------------------------------------------------------------------|
| `Length`     | 14      | The period over which the highest high and the lowest low are measured to determine the midpoint |

| Output Example | Type  | Description                                                                 |
|:---------------|:------|:----------------------------------------------------------------------------|
| `Midpoint: 1325.50`| Float | Indicates the midpoint price, representing a balance between the high and low over the specified period |

### Pascal Moving Average
The Pascal Moving Average is a specialized form of moving average that weights its calculations based on the Pascal Triangle, a mathematical structure that assigns coefficients according to the binomial coefficients. This weighting approach gives greater importance to middle values within the moving average period, providing a smoothed data line that reflects both recent price movements and the stability of the longer trend.

The Pascal Moving Average is particularly valuable for traders who need a reliable but sensitive indicator of trend direction, balancing responsiveness to price changes with a smooth representation of the underlying trend. Its unique weighting scheme makes it less prone to the fluctuations seen in simple or exponential moving averages.

| Input        | Default | Description                                                         |
|:-------------|:--------|:--------------------------------------------------------------------|
| `Length`     | 20      | The period over which the Pascal Moving Average is calculated, determining how much emphasis is placed on the central values of the data set |

| Output Example | Type  | Description                                                                 |
|:---------------|:------|:----------------------------------------------------------------------------|
| `Pascal MA: 1320.75`| Float | Indicates the current value of the Pascal Moving Average, showing a blend of recent price changes with an emphasis on the stability of the trend in the middle of the period |

### Wilder's Moving Average
Wilder's Moving Average, also known as the Wilder Smoothing Method, is a type of exponential moving average developed by J. Welles Wilder, Jr., specifically designed for the commodities and forex markets. It is unique because it applies a smoothing factor that makes it more responsive to price changes in these particularly volatile trading environments.

Wilder's Moving Average is particularly useful in technical analysis for its effectiveness in smoothing out short-term fluctuations to reveal underlying trends. It is widely used in the calculation of other indicators developed by Wilder, including the Relative Strength Index (RSI) and the Average True Range (ATR), enhancing their accuracy in trend analysis.

| Input        | Default | Description                                                         |
|:-------------|:--------|:--------------------------------------------------------------------|
| `Length`     | 14      | The period over which Wilder's Moving Average is calculated. This period influences the degree of smoothing, with longer periods offering greater smoothing |

| Output Example | Type  | Description                                                                 |
|:---------------|:------|:----------------------------------------------------------------------------|
| `Wilder's MA: 1230.50`| Float | Indicates the current value of Wilder's Moving Average, providing a smoother response to volatile market changes typical in commodities and forex markets |

### Sine Weighted Moving Average (SWMA)
The Sine Weighted Moving Average (SWMA) is a type of moving average that applies a sine function to give different weights to data points within the window. This approach emphasizes the middle portions of the data series more significantly than the ends, reflecting a natural, sinusoidal emphasis on the central values.

The Sine Weighted Moving Average is particularly valuable for traders who need an indicator that smoothens price data while reducing lag and noise. Its unique weighting method makes it less prone to spikes and abrupt changes compared to simple or exponential moving averages, offering a smoother and more reliable signal for trend following.

| Input        | Default | Description                                                         |
|:-------------|:--------|:--------------------------------------------------------------------|
| `Length`     | 14      | The period over which the Sine Weighted Moving Average is calculated, influencing how the weights are distributed within the window |

| Output Example | Type  | Description                                                                 |
|:---------------|:------|:----------------------------------------------------------------------------|
| `SWMA: 1320.75`| Float | Indicates the current value of the Sine Weighted Moving Average, providing a balanced view of recent price movements with a focus on central values |

### Simple Moving Average (SMA)
The Simple Moving Average (SMA) is one of the most commonly used indicators in technical analysis. It calculates the average price of a security over a specified number of periods, evenly weighting each period’s price. The SMA smooths out price data by creating a constantly updated average price, which can help identify the trend direction and provide support and resistance levels.

The Simple Moving Average is particularly useful for spotting trends over the long term, reducing market noise and highlighting the direction of the market. It's ideal for helping traders determine whether to enter or exit a market, based on the position of the price relative to the SMA.


| Input        | Default | Description                                                         |
|:-------------|:--------|:--------------------------------------------------------------------|
| `Length`     | 14      | The period over which the SMA is calculated, determining the range of data averaged |

| Output Example | Type  | Description                                                                 |
|:---------------|:------|:----------------------------------------------------------------------------|
| `SMA: 1320.50` | Float | Indicates the current value of the SMA, providing a straightforward and smoothed representation of price movements over the specified period |


### T3 Moving Average
The T3 Moving Average is a sophisticated smoothing mechanism developed by Tim Tillson, which incorporates a double smoothing technique that reduces lag more effectively than traditional moving averages. It uses a volume factor "v" derived from the smoothing parameter \( A \) to control the amount of smoothing, making it highly adaptable to different market conditions.

The T3 Moving Average is especially valuable for traders who require a more responsive moving average that still maintains a smooth curve, helping to identify trend directions and reversals without the delay typically associated with other moving averages. This makes it a preferred choice for those trading in fast-moving, volatile markets.

| Input        | Default | Description                                                         |
|:-------------|:--------|:--------------------------------------------------------------------|
| `Length`     | 10       | The period over which the T3 Moving Average is calculated, affecting its responsiveness and smoothness |
| `A`          | 0.7     | The smoothing factor used to calculate the volume factor in the formula, influencing the degree of smoothing and responsiveness |

| Output Example | Type  | Description                                                                 |
|:---------------|:------|:----------------------------------------------------------------------------|
| `T3 MA: 1322.50` | Float | Indicates the current value of the T3 Moving Average, showcasing an advanced, smooth representation of price movements, highly responsive to recent market data |

### Triple Exponential Moving Average (TEMA)
The Triple Exponential Moving Average (TEMA) is a unique indicator that attempts to eliminate the lag associated with traditional moving averages by applying triple smoothing to the price data. This makes the TEMA more responsive to recent price changes and helps to highlight shorter-term trends and reversals more effectively than simpler moving averages.

The TEMA is particularly useful in highly volatile markets where rapid response to price changes is crucial for successful trading. Its ability to reduce lag more than single or even double exponential moving averages makes it a powerful tool for traders focusing on momentum and trend following strategies.

| Input        | Default | Description                                                         |
|:-------------|:--------|:--------------------------------------------------------------------|
| `Length`     | 14      | The period over which the TEMA is calculated, significantly impacting its sensitivity and smoothing properties |

| Output Example | Type  | Description                                                                 |
|:---------------|:------|:----------------------------------------------------------------------------|
| `TEMA: 1320.85`| Float | Indicates the current value of the TEMA, providing a highly responsive and smoothed representation of recent price trends |

### Triangular Moving Average (TMA)
The Triangular Moving Average (TMA) is a type of moving average that applies a double smoothing process, averaging the data twice. This method results in a smoother and more rounded line that is less responsive to individual price changes, aiming to provide a clearer picture of the overall trend.

The Triangular Moving Average is especially beneficial for identifying longer-term trends in a market. Its double smoothing process reduces volatility and noise more effectively than simple or exponential moving averages, making it an excellent choice for traders and analysts looking to assess sustainable trends without the distraction of short-term fluctuations.

| Input        | Default | Description                                                         |
|:-------------|:--------|:--------------------------------------------------------------------|
| `Length`     | 18      | The period over which the TMA is calculated. This length impacts how the moving average smooths the data, with longer periods leading to a smoother average |

| Output Example | Type  | Description                                                                 |
|:---------------|:------|:----------------------------------------------------------------------------|
| `TMA: 1325.50` | Float | Indicates the current value of the TMA, showing a smoothed, average price level that effectively reduces market noise and highlights the underlying trend |

### Variable Index Dynamic Average (VIDYA)
The Variable Index Dynamic Average (VIDYA) is an adaptive moving average that adjusts its sensitivity based on the volatility of the market. It uses the Chande Momentum Oscillator as a basis for determining the volatility factor, which then adjusts the smoothing constant of the exponential moving average accordingly.

The Variable Index Dynamic Average is particularly valuable in markets where price action is highly variable. Its adaptive nature allows it to be more responsive during periods of high volatility while smoothing out fluctuations when the market is more stable. This makes VIDYA a versatile tool for traders who need an indicator that can adjust to changing market conditions.

| Input        | Default | Description                                                         |
|:-------------|:--------|:--------------------------------------------------------------------|
| `Length`     | 14      | The period over which the VIDYA is calculated. This length not only determines the base for the exponential moving average but also influences how the volatility factor modifies this smoothing |

| Output Example | Type  | Description                                                                 |
|:---------------|:------|:----------------------------------------------------------------------------|
| `VIDYA: 1320.75`| Float | Indicates the current value of the VIDYA, providing a dynamically adjusted reflection of price trends based on recent market volatility |


### Volume Weighted Moving Average (VWMA)
The Volume Weighted Moving Average (VWMA) is a type of moving average that incorporates volume into its calculation, giving more weight to price moves with higher volume. By doing so, it reflects not just the average price levels but also the relative importance of those prices based on trading activity.

The Volume Weighted Moving Average is particularly useful for traders looking to understand the momentum behind price movements. High-volume periods carrying more weight can indicate stronger support or resistance levels, making the VWMA a valuable tool for confirming trends and potential reversals based on not just price changes but associated trading volumes.

| Input        | Default | Description                                                         |
|:-------------|:--------|:--------------------------------------------------------------------|
| `Length`     | 10      | The period over which the VWMA is calculated. This length helps determine how the moving average is smoothed and how volume data impacts the average price |

| Output Example | Type  | Description                                                                 |
|:---------------|:------|:----------------------------------------------------------------------------|
| `VWMA: 1320.50` | Float | Indicates the current value of the VWMA, showing an average price that is weighted by trading volume, which can provide insights into the strength behind price movements |

### Weighted Closing Price
The Weighted Closing Price is a straightforward technical indicator that calculates the average price for a given period, but with an emphasis on the closing price. It is typically computed by adding the high, low, and twice the closing price of the security, then dividing the sum by four. This weighting gives more importance to the closing price, which is often considered the most important price of the day by traders and analysts.

The Weighted Closing Price is particularly valuable for traders who focus on the end-of-day data to make trading decisions. It provides a simple yet effective measure of the closing strength of the market, potentially serving as a signal for the next day's trading direction based on end-of-day momentum.

| Input        | Default | Description                                                         |
|:-------------|:--------|:--------------------------------------------------------------------|
| *No specific inputs are typically required for calculating the Weighted Closing Price.* |

| Output Example | Type  | Description                                                                 |
|:---------------|:------|:----------------------------------------------------------------------------|
| `Weighted Closing Price: 1320.75`| Float | Indicates the current value of the Weighted Closing Price, offering a nuanced view of the market's closing sentiment for the period considered |

### Weighted Moving Average (WMA)
The Weighted Moving Average (WMA) is a type of moving average that assigns more importance to recent price data than older data by weighting recent prices more heavily. Unlike the simple moving average (SMA), which gives equal weight to all prices within the period, the WMA helps to reflect the current market dynamics more accurately.

The Weighted Moving Average is especially useful for traders looking to capture the latest market trends without the lag associated with simpler moving averages. Its emphasis on more recent prices makes it particularly effective for short-term trading and in markets where price action is rapidly changing.

| Input        | Default | Description                                                         |
|:-------------|:--------|:--------------------------------------------------------------------|
| `Length`     | 14      | The period over which the WMA is calculated. This setting determines the range of data used for averaging and how weights are distributed, with more emphasis on the most recent prices |

| Output Example | Type  | Description                                                                 |
|:---------------|:------|:----------------------------------------------------------------------------|
| `WMA: 1325.50` | Float | Indicates the current value of the WMA, showing a smoothed, average price level that is more responsive to recent price movements compared to the SMA |

### Zero Lag Exponential Moving Average (ZLEMA)
The Zero Lag Exponential Moving Average (ZLEMA) is designed to reduce the inherent lag associated with traditional exponential moving averages (EMA) by adjusting the formula to react more quickly to recent price changes. This is achieved by adding a component that accounts for price deviations, essentially attempting to 'predict' future movements based on recent trends.

The Zero Lag Exponential Moving Average is particularly valuable for traders who need timely signals in fast-moving markets. Its ability to minimize delay makes it a preferred tool for identifying trend directions and potential turning points in volatile trading environments.

| Input        | Default | Description                                                         |
|:-------------|:--------|:--------------------------------------------------------------------|
| `Length`     | 10      | The period over which the ZLEMA is calculated. This period impacts the responsiveness of the moving average to price changes, aiming to provide a balance between sensitivity and smoothness. |
| `MA Mode`     | ema     | The type of Moving Average to use for calculating the Fast & Slow Inputs |


| Output Example | Type  | Description                                                                 |
|:---------------|:------|:----------------------------------------------------------------------------|
| `ZLEMA: 1320.85`| Float | Indicates the current value of the ZLEMA, providing a more immediate reflection of recent price changes compared to traditional EMAs, with reduced lag |

### Average Directional Movement Index (ADX)
The Average Directional Movement Index (ADX) is a technical analysis indicator used to quantify the strength of a trend. The ADX is derived from two other indicators, also developed by Welles Wilder, called the Plus Directional Indicator (+DI) and the Minus Directional Indicator (-DI). These indicators help determine trend direction and strength.

The ADX is particularly useful in distinguishing between trending and range-bound markets, helping traders to decide whether to employ trend-following strategies or range trading techniques. It does not indicate trend direction, but rather the strength of the current trends, whether up or down.

| Input        | Default | Description                                                         |
|:-------------|:--------|:--------------------------------------------------------------------|
| `Length`     | 14      | The period over which the ADX, +DI, and -DI are calculated. This period helps to smooth the data to better identify the strength and consistency of a trend. |

| Output Example | Type  | Description                                                                 |
|:---------------|:------|:----------------------------------------------------------------------------|
| `ADX: 25`      | Float | A value of 25 suggests a strong trend; values above 25 typically indicate a very strong trend, while values below 20 often imply a weak or non-trending market. |
| `+DM: 14`      | Float | Indicates the positive directional movement value which measures the strength of upward price movements. |
| `-DM: 10`      | Float | Indicates the negative directional movement value which measures the strength of downward price movements. |

### Aroon and Aroon Oscillator
The Aroon indicator and the Aroon Oscillator are designed to measure the strength of a trend and the likelihood that the trend will continue. Developed by Tushar Chande, the Aroon indicator consists of two lines: Aroon Up and Aroon Down, which track the days since a high and low within a set period, respectively. The Aroon Oscillator is derived by subtracting Aroon Down from Aroon Up.

The Aroon indicators are particularly useful in identifying whether a stock is entering into a new uptrend or downtrend. The oscillator provides a straightforward measure of the trend’s momentum, offering traders critical insights into potential turning points in market price movements.

| Input        | Default | Description                                                         |
|:-------------|:--------|:--------------------------------------------------------------------|
| `Length`     | 25      | The period over which the highs and lows are tracked for the Aroon calculations. This length affects the sensitivity and the smoothing of the indicator readings. |

| Output Example | Type      | Description                                                                 |
|:---------------|:----------|:----------------------------------------------------------------------------|
| `Up: 0.75`      | Float | Indicates that the highest price was reached 75% of the total period ago. Higher values suggest strong uptrend potential. |
| `Down: 0.25`    | Float | Indicates that the lowest price was reached 25% of the total period ago. Lower values suggest strong downtrend potential. |
| `Oscillator: 0.5` | Float | A positive value (e.g., 50%) indicates a bullish trend, while a negative value indicates a bearish trend. This value represents the difference between the Aroon Up and Aroon Down. |

### Choppiness Index
The Choppiness Index is a volatility indicator designed to determine whether the market is choppy (trading sideways) or trending. This indicator calculates how much the market has moved over a specified period relative to the range during that period, presented on a scale typically from 0 to 100. Higher values indicate a market that is more choppy or range-bound, while lower values suggest a trend is strong and directional.

The Choppiness Index is particularly useful for identifying phases of consolidation and helping traders decide when to enter or avoid the market based on the clarity of the current trend. It’s an excellent tool for distinguishing periods when the market is likely to be unproductive for trend-following strategies.

| Input        | Default | Description                                                         |
|:-------------|:--------|:--------------------------------------------------------------------|
| `Length`     | 14      | The period over which the Choppiness Index is calculated. This sets how many periods are used to assess market movement. |
| `ATR Length` | 14      | The period used for calculating the Average True Range (ATR), which helps normalize the range component of the index. |
| `Scalar`     | 100     | A scaling factor applied to normalize the index output to a readable range, typically 0 to 100. |

| Output Example | Type  | Description                                                                 |
|:---------------|:------|:----------------------------------------------------------------------------|
| `Choppiness Index: 61.5` | Float | A value like 61.5 suggests the market is neither overly choppy nor strongly trending, indicating moderate indecision or consolidation phases. |

### Parabolic Stop and Reverse (Parabolic SAR)
The Parabolic Stop and Reverse (Parabolic SAR) is a technical analysis tool used to determine the potential stop-and-reverse points in the price movement of an asset. It is often used to set trailing stop losses and to indicate potential reversal points where the momentum could change from bullish to bearish, or vice versa. The indicator places dots on a chart above or below the price, indicating the current trend direction.

The Parabolic SAR is especially useful for traders who want to ensure they are aligned with the current trend momentum and need precise indicators for potential exit or entry points to manage their trades actively.

| Input      | Default | Description                                                         |
|:-----------|:--------|:--------------------------------------------------------------------|
| `AF0`      | 0.02    | The initial acceleration factor, which determines the sensitivity of the SAR to price changes at the start of a new trend. |
| `AF`       | 0.02    | The acceleration factor increment, which increases the acceleration factor as the trend develops, making the SAR catch up to the price more quickly. |
| `Max AF`   | 0.20    | The maximum value that the acceleration factor can reach, capping the sensitivity to prevent it from becoming too reactive. |

| Output Example | Type   | Description                                                                 |
|:---------------|:-------|:----------------------------------------------------------------------------|
| `Long: 1`   | Int | Indicates that the current trend is upward, suggesting a buy signal or hold position if already long. |
| `Short: 0` | Int | Indicates that the current trend is not downward; not suggesting a sell signal or short position. |
| `Acceleration Factor: 0.04` | Float | Shows the current value of the acceleration factor based on the trend's persistence and volatility. |
| `Reversal: 1320.50` | Float | Indicates the price level at which a reversal might occur if the trend changes, effectively where the SAR would flip. |

### Qstick Indicator
The Qstick Indicator is a technical analysis tool developed by Tushar Chande to quantify the buying and selling pressure over a specified period. It is calculated by taking the average of the differences between the closing and opening prices of a security for a given number of days. The resulting value can be positive (indicating net buying pressure) or negative (indicating net selling pressure).

The Qstick Indicator is particularly useful for identifying short-term buying or selling trends and can help traders gauge the momentum behind price movements. By providing a visual representation of the market's overall direction, it assists in decision-making related to entries and exits in trading strategies.

| Input        | Default | Description                                                         |
|:-------------|:--------|:--------------------------------------------------------------------|
| `Length`     | 14      | The period over which the Qstick is calculated. This determines how many days' worth of open-close differentials are considered in the calculation. |

| Output Example | Type  | Description                                                                 |
|:---------------|:------|:----------------------------------------------------------------------------|
| `Qstick: 0.25` | Float | A positive Qstick value like 0.25 suggests a bullish trend with predominant buying pressure over the specified period. A negative value would suggest bearish pressure. |

### Vertical Horizontal Filter (VHF)
The Vertical Horizontal Filter (VHF) is a technical analysis tool used to identify whether a market is in a trending phase or a ranging (sideways) phase. The VHF measures the level of trend activity relative to the range over a specified period. It helps distinguish between trending and choppy markets by comparing the difference between the highest and lowest prices to the cumulative sum of price changes.

The Vertical Horizontal Filter is particularly useful for determining the nature of the market - whether it is conducive to adopting trend-following strategies or if a range-bound strategy might be more appropriate. This makes it a valuable tool for traders looking to optimize their approach based on market conditions.

| Input        | Default | Description                                                         |
|:-------------|:--------|:--------------------------------------------------------------------|
| `Length`     | 28      | The period over which the VHF is calculated. This determines the scope of the market data analyzed, affecting the indicator’s responsiveness to price changes. |

| Output Example | Type  | Description                                                                 |
|:---------------|:------|:----------------------------------------------------------------------------|
| `VHF: 0.50`    | Float | A VHF value near 0 indicates a ranging market, while values closer to 1 indicate a trending market. A value like 0.50 suggests moderate trending characteristics. |

### Vortex Indicator
The Vortex Indicator is a technical analysis tool designed to identify the start of a new trend or the continuation of an existing trend within financial markets. It is composed of two oscillating lines: one to identify positive trend movement (VI+) and the other for negative trend movement (VI-). These lines are calculated based on the highs and lows of the period and their relationship to previous price points.

The Vortex Indicator is especially useful for identifying new trends and confirming ongoing trends. A higher VI+ compared to VI- typically signals a strong upward trend, whereas a higher VI- indicates a dominant downward trend. This helps traders make informed decisions on entering or exiting trades based on clear trend signals.

| Input        | Default | Description                                                         |
|:-------------|:--------|:--------------------------------------------------------------------|
| `Length`     | 14      | The period over which the Vortex Indicator is calculated. This length is crucial as it defines the range of data used to assess trend movement and direction. |

| Output Example | Type  | Description                                                                 |
|:---------------|:------|:----------------------------------------------------------------------------|
| `Positive: 1.05`| Float | Indicates the value of the Positive Vortex Indicator (VI+), suggesting the strength of upward trend momentum. |
| `Negative: 0.85`| Float | Indicates the value of the Negative Vortex Indicator (VI-), suggesting the strength of downward trend momentum. |

## Volatility Indicators

### Acceleration Bands
Acceleration Bands are a technical analysis tool designed to show the outer boundaries of price movements, which can help traders recognize directional breakouts and potential volatility. They consist of upper, middle, and lower bands that are based on a simple moving average expanded by a specified coefficient over a given period. These bands help in identifying both the range of trading and breakout points.

Acceleration Bands are particularly useful in volatile markets, as they adapt to changes in price momentum and can indicate when the price is accelerating away from its typical range. Traders can use these bands to adjust their trading strategy, taking advantage of breakout opportunities or reinforcing positions near support and resistance levels marked by the bands.

| Input        | Default | Description                                                         |
|:-------------|:--------|:--------------------------------------------------------------------|
| `Length`     | 20      | The period over which the middle band (a simple moving average) is calculated. This forms the basis for the other two bands. |
| `C`          | 2       | The coefficient used to widen the bands, determining the distance of the upper and lower bands from the middle band. This factor multiplies the high-low difference, affecting how responsive the bands are to price changes. |
| `MA Mode`   | sma      | The type of Moving Average to use for calculating the Fast & Slow Inputs |


| Output Example | Type  | Description                                                                 |
|:---------------|:------|:----------------------------------------------------------------------------|
| `Upper: 1345.75`| Float | Indicates the value of the upper Acceleration Band, showing potential resistance or breakout levels above the average. |
| `Middle: 1320.50`| Float | Represents the middle band, essentially a simple moving average of the prices over the specified period. |
| `Lower: 1295.25`| Float | Indicates the value of the lower Acceleration Band, showing potential support or breakout levels below the average. |

### Average True Range (ATR)
The Average True Range (ATR) is a volatility indicator used in technical analysis to measure the degree of price volatility by calculating the average range between the high and low prices over a specified period. It provides traders with a deeper understanding of how wildly prices are swinging as they try to establish the strength of a potential price move.

The ATR is particularly useful for adjusting stop-loss orders or setting trade exit points because it provides a quantitative measure of the market's volatility. It helps traders to manage their risk by indicating the amount of price movement that can be expected under current market conditions, allowing for better-informed decisions based on the potential for price movement rather than arbitrary price levels.

| Input        | Default | Description                                                         |
|:-------------|:--------|:--------------------------------------------------------------------|
| `Length`     | 14      | The period over which the ATR is calculated. This period determines how far back in the trading record the calculation looks to establish the average range of price movements. |
| `MA Mode`   | rma      | The type of Moving Average to use for calculating the Fast & Slow Inputs |

| Output Example | Type  | Description                                                                 |
|:---------------|:------|:----------------------------------------------------------------------------|
| `ATR: 1.25`    | Float | Indicates the current Average True Range, measuring the average volatility in price movement over the specified period. A higher value suggests greater volatility and potentially higher risk. |

### Bollinger Bands
Bollinger Bands are a type of price envelope developed by John Bollinger that are plotted at a standard deviation level above and below a simple moving average (SMA) of the price. This technical analysis tool consists of three lines: the upper band, the middle band (which is the SMA of the price), and the lower band.

Bollinger Bands help traders understand the price volatility of a stock. The width of the bands increases during periods of high volatility and contracts during times of low volatility. This dynamic nature of the bands provides unique insights into potential market trends and price targets, helping traders make more informed decisions regarding entry and exit points.

| Input        | Default | Description                                                         |
|:-------------|:--------|:--------------------------------------------------------------------|
| `Length`     | 20      | The period over which the SMA and the standard deviation are calculated, typically used to determine the middle band. |
| `Std Dev`    | 2       | The number of standard deviations away from the SMA the upper and lower bands should be set. |
| `Ddof`       | 1       | The "Delta Degrees of Freedom". The divisor used in the calculation of the standard deviation, influencing the level of bias in the band positioning. |
| `MA Mode`   | sma      | The type of Moving Average to use for calculating the Fast & Slow Inputs |

| Output Example   | Type        | Description                                                                       |
|:-----------------|:------------|:----------------------------------------------------------------------------------|
| `Upper: 255.67`  | Float       | Indicates the current upper Bollinger Band, marking a potential resistance level. |
| `Middle: 250.34` | Float       | Represents the middle Bollinger Band or the selected moving average of the price.   |
| `Lower: 244.98`  | Float       | Indicates the current lower Bollinger Band, marking a potential support level.    |

### Donchian Channel
The Donchian Channel is a technical analysis tool that plots three bands based on the highest high and the lowest low over a specific period. This indicator is used to identify breakout points in the price of an asset by capturing the volatility and momentum. The channel consists of an upper band, a middle band, and a lower band.

The upper band represents the highest price of an asset over the selected period, the lower band represents the lowest price, and the middle band is typically calculated as the average of the upper and lower bands. This setup helps traders to recognize potential overbought or oversold conditions, and to make decisions on entry and exit points based on these levels.

| Input           | Default | Description                                                         |
|:----------------|:--------|:--------------------------------------------------------------------|
| `Lower Length`  | 20      | The period used to calculate the lowest low, forming the lower band. |
| `Upper Length`  | 20      | The period used to calculate the highest high, forming the upper band. |

| Output Example   | Type        | Description                                                                       |
|:-----------------|:------------|:----------------------------------------------------------------------------------|
| `Upper: 265.50`  | Float       | Indicates the current upper Donchian Channel, marking a potential resistance level. |
| `Middle: 260.25` | Float       | Represents the middle of the Donchian Channel, calculated as the average of the upper and lower band values. |
| `Lower: 255.00`  | Float       | Indicates the current lower Donchian Channel, marking a potential support level.    |

### Keltner Channel
The Keltner Channel is a technical analysis indicator that consists of three bands designed to measure the volatility of a stock or commodity. The middle band is typically an exponential moving average (EMA) of the closing prices, while the upper and lower bands are set above and below this middle band using a multiple of the average true range (ATR) of the price.

Keltner Channels are used to identify potential trend reversals and the strength of trends based on the position of the closing prices relative to the channel. A move above the upper band can indicate overbought conditions, whereas a move below the lower band can suggest oversold conditions. This helps traders in setting stop-loss orders or in timing entries and exits in alignment with the market's volatility.

| Input        | Default | Description                                                         |
|:-------------|:--------|:--------------------------------------------------------------------|
| `Length`     | 20      | The number of periods used to calculate the EMA for the middle band.|
| `Scalar`     | 2       | The multiplier used with the ATR to set the width of the upper and lower bands. |
| `MA Mode`   | ema      | The type of Moving Average to use for calculating the Fast & Slow Inputs |


| Output Example   | Type        | Description                                                                       |
|:-----------------|:------------|:----------------------------------------------------------------------------------|
| `Upper: 130.50`  | Float       | Indicates the current upper Keltner Channel, marking a potential resistance level.|
| `Middle: 125.00` | Float       | Represents the middle Keltner Channel, which is the EMA of the closing prices.    |
| `Lower: 119.50`  | Float       | Indicates the current lower Keltner Channel, marking a potential support level.    |

### Mass Index
The Mass Index is a technical analysis tool designed to identify trend reversals by measuring the range between high and low stock prices over a specific period. The indicator does not directly predict price direction, but rather it detects reversals by identifying changes in the range. The Mass Index rises when the range widens between high and low prices and falls when the range narrows, potentially signaling a reversal when it reaches a certain threshold.

This tool is particularly useful for traders who want to catch early signs of a trend reversal, even before momentum starts to shift visibly. The Mass Index can be used alongside other indicators to confirm potential trend changes and to fine-tune entry and exit strategies in trading scenarios.

| Input       | Default | Description                                                         |
|:------------|:--------|:--------------------------------------------------------------------|
| `Fast`      | 9       | The period over which the high-low range is smoothed initially. This is the faster component of the smoothing process. |
| `Slow`      | 25      | The period over which the initially smoothed range is smoothed again. This is the slower component of the overall index calculation. |

| Output Example   | Type  | Description                                                                       |
|:-----------------|:------|:----------------------------------------------------------------------------------|
| `Mass Index: 27` | Float | Indicates the current Mass Index value. Values around 27 or higher typically suggest potential trend reversals due to increased range volatility.

### Normalized Average True Range (NATR)
The Normalized Average True Range (NATR) is a modification of the traditional Average True Range (ATR) indicator. It normalizes the ATR by the closing price, making it a relative measure of volatility compared to just an absolute measure. This normalization allows traders to compare volatility levels across different instruments or markets regardless of their price levels.

NATR provides insights into the relative volatility of a security or commodity, helping traders make decisions based on volatility as a percentage of price, which can be particularly useful for adjusting strategies in highly volatile or less volatile markets. This relative measure helps in setting proportionate stop-loss orders and in managing risk more effectively.

| Input        | Default | Description                                                         |
|:-------------|:--------|:--------------------------------------------------------------------|
| `Length`     | 14      | The period over which the ATR is calculated, which is then normalized by the closing price to calculate NATR. |
| `MA Mode`   | ema      | The type of Moving Average to use for calculating the Fast & Slow Inputs |

| Output Example   | Type  | Description                                                                       |
|:-----------------|:------|:----------------------------------------------------------------------------------|
| `NATR: 1.2%`     | Float | Indicates the current Normalized Average True Range, measuring the average volatility as a percentage of the closing price over the specified period. A higher percentage indicates greater volatility relative to the price.

<!-- ### Price Distance
Price Distance is the difference between the high and low prices. -->

### Elder's Thermometer
Elder's Thermometer is a volatility indicator developed by Dr. Alexander Elder, designed to measure the "heat" or volatility of the market. This indicator uses a combination of different moving averages calculated over various lengths to provide a comprehensive view of market dynamics. The indicator consists of the main "thermometer" value, which is the primary measure of volatility, alongside additional moving averages that help interpret shorter and longer-term market trends.

The "thermometer" essentially reflects how wildly prices are moving within the specified period, aiding traders in understanding the intensity of trading activity. By comparing the shorter and longer-term averages, traders can discern whether market volatility is increasing or decreasing, which can influence trading decisions such as timing of entries and exits, as well as risk management practices.

| Input        | Default | Description                                                         |
|:-------------|:--------|:--------------------------------------------------------------------|
| `Length`     | 30      | The period over which the basic thermometer calculation is performed. This is the baseline for volatility measurement. |
| `Long`       | 2      | The longer period over which the moving average is calculated, used to assess longer-term market volatility. |
| `Short`      | 0.5      | The shorter period over which the moving average is calculated, providing insight into shorter-term market changes. |
| `MA Mode`   | ema      | The type of Moving Average to use for calculating the Fast & Slow Inputs |

| Output Example            | Type  | Description                                                                       |
|:--------------------------|:------|:----------------------------------------------------------------------------------|
| `Thermometer: 1.5`        | Float | Indicates the current reading of Elder's Thermometer, showing market volatility.  |
| `Moving Average: 1.3`     | Float | Represents the average volatility over the specified `Length`.                    |
| `Long: 1.4`               | Float | Indicates the moving average calculated over the `Long` period, showing longer-term volatility trends. |
| `Short: 1.6`              | Float | Represents the moving average calculated over the `Short` period, reflecting more immediate market changes. |

### True Range
The True Range is a technical analysis indicator used to measure the volatility of an asset's price. It captures the full range of price movement in a given period, accounting not only for the high and low during the period but also for possible gaps from the previous close. This indicator is critical in understanding the extent of price variation and is often used as a building block for other indicators, like the Average True Range (ATR).

The concept of "drift" in the True Range calculation adds a dimension of how much the closing price has moved from the previous close, which is useful in spotting potential breakouts or significant shifts in market sentiment.

| Input        | Default | Description                                                         |
|:-------------|:--------|:--------------------------------------------------------------------|
| `Drift`      | 14       | The amount of price movement (or drift) from the previous close that is considered significant for calculating the True Range. |

| Output Example     | Type  | Description                                                                       |
|:-------------------|:------|:----------------------------------------------------------------------------------|
| `True Range: 2.45` | Float | Indicates the true range for the current period, measuring the maximum observed price movement, inclusive of any gaps from the previous close.

### Ulcer Index
The Ulcer Index is a volatility indicator that measures the depth and duration of drawdowns in price from recent peaks. Unlike many other volatility metrics that focus on general fluctuations, the Ulcer Index specifically targets the stress caused by price declines, thus providing a unique measure of downside risk. It is particularly useful for investors or traders who wish to understand the potential for loss or the discomfort an asset might create while held in a portfolio.

The index is calculated by considering the percentage drawdowns from peaks over a specified period and then squaring the average drawdown to express the result as an index. This squaring effect emphasizes larger declines, making the Ulcer Index a valuable tool for assessing the risk of serious declines.

| Input        | Default | Description                                                         |
|:-------------|:--------|:--------------------------------------------------------------------|
| `Length`     | 14      | The number of periods over which the drawdowns are measured and squared to calculate the Ulcer Index. |

| Output Example     | Type  | Description                                                                       |
|:-------------------|:------|:----------------------------------------------------------------------------------|
| `Ulcer Index: 5.6` | Float | Indicates the current Ulcer Index value. A higher index suggests greater downside volatility and potential stress on investment.

## Volume Indicators

### Accumulation Distribution Line
The Accumulation Distribution Line (ADL) is a volume-based indicator used in technical analysis to help determine the underlying supply and demand dynamics of a stock by assessing how volume is influencing price movements. It is essentially a running total of each period's "Money Flow Volume," which combines the price and volume of the stock to indicate whether it is being accumulated or distributed.

The primary use of the ADL is to identify divergences between the indicator and the stock price. Such divergences can signal potential reversals. For example, if the price is rising but the ADL is falling, it could suggest that the price increase is not supported by strong buying pressure and might be due to thin out soon.

The ADL is particularly useful for confirming the strength of a trend or spotting potential reversals before they are evident in the price action alone.

| Output Example            | Type  | Description                                                                       |
|:--------------------------|:------|:----------------------------------------------------------------------------------|
| `Accumulation Distribution Line: 15000` | Integer | Indicates the current value of the Accumulation Distribution Line, with higher values suggesting stronger accumulation and positive sentiment, and lower values suggesting distribution and negative sentiment.

### Chaikin Money Flow
Chaikin Money Flow (CMF) is a technical analysis indicator developed by Marc Chaikin that assesses the amount of Money Flow Volume over a specific period. It combines both price and volume to form an oscillator that fluctuates above and below zero. This tool is primarily used to identify buying and selling pressure and to confirm the strength of a price trend.

The CMF calculates the sum of Accumulation/Distribution values for a given period, adjusted by the total volume over that period. A positive CMF value indicates that the market is under accumulation, as the majority of trading volume is associated with upward price movements, while a negative CMF value suggests distribution, where the majority of the volume is associated with downward price movements.

This indicator is particularly useful for confirming breakout directions or signaling potential reversals when divergences occur between the indicator and price movements.

| Input        | Default | Description                                                         |
|:-------------|:--------|:--------------------------------------------------------------------|
| `Length`     | 20      | The period over which the Money Flow Volume is summed and compared to the total volume, used to calculate the Chaikin Money Flow. |

| Output Example          | Type  | Description                                                                       |
|:------------------------|:------|:----------------------------------------------------------------------------------|
| `Chaikin Money Flow: 0.05` | Float | Indicates the current Chaikin Money Flow value. Positive values suggest buying pressure (accumulation), while negative values suggest selling pressure (distribution).

### Elder's Force Index
Elder's Force Index (EFI) is a powerful technical analysis tool developed by Dr. Alexander Elder that combines price movements with volume to measure the force behind price movements. This indicator is primarily used to identify the strength of a price trend and the potential for its continuation or reversal.

The EFI is calculated by subtracting the previous closing price from the current closing price, multiplying the result by the volume for the current period, and then applying a moving average to smooth the data over the specified period. A positive EFI indicates buying pressure, suggesting that the trend may continue upward, while a negative EFI indicates selling pressure, suggesting a potential downward trend.

This tool is invaluable for traders looking to enhance their understanding of market dynamics and for making informed decisions based on the strength and direction of market trends.

| Input        | Default | Description                                                         |
|:-------------|:--------|:--------------------------------------------------------------------|
| `Length`     | 20      | The period over which the moving average of the Force Index is calculated, smoothing out the daily values to provide a clearer trend indicator. |

| Output Example            | Type  | Description                                                                       |
|:--------------------------|:------|:----------------------------------------------------------------------------------|
| `Elder's Force Index: -150` | Integer | Indicates the current value of the Elder's Force Index. A negative value suggests that selling pressure is dominating, while a positive value would indicate strong buying pressure.

### Trend Force Index
The Trend Force Index (TFI) is a technical analysis indicator designed to measure the strength of a trend by analyzing both the magnitude of price changes and the volume during those changes. It offers a deeper insight into the momentum and force behind market movements, helping traders assess whether a trend is gaining or losing strength.

TFI is calculated using a formula that incorporates price change, volume, and a smoothing mechanism (typically an exponential moving average) to refine the signal. This index provides a numerical value that reflects the intensity of the trend: positive values indicate a strong upward trend, while negative values suggest a strong downward trend.

The Trend Force Index helps traders identify optimal entry and exit points by signaling when a trend is strong enough to continue or when it shows signs of weakening. This makes it particularly useful in avoiding false breakouts and in capitalizing on sustained movements.

| Output Example            | Type  | Description                                                                       |
|:--------------------------|:------|:----------------------------------------------------------------------------------|
| `Trend Force Index: 350`  | Integer | Indicates the current value of the Trend Force Index. A higher positive value indicates a strong bullish trend, whereas a negative value would suggest a strong bearish trend.

### Ease of Movement
The Ease of Movement (EOM) indicator is a volume-based oscillator that is used to identify the relationship between price movements and volume. Developed by Richard Arms, this indicator primarily assesses how easily a stock price moves in response to its trading volume. A high EOM value indicates that the stock is moving upward with relative ease, often due to low resistance and strong buying pressure. Conversely, a low EOM value suggests that the stock is facing resistance or lacks sufficient volume support for the price movement.

EOM is calculated by comparing the midpoint change of the stock price (difference between the high and low of each day, divided by two) with the volume by using the formula provided. The result is then smoothed using a moving average over the specified length, and a division factor is applied to scale the values for better readability and practical use in charting software.

This indicator is especially useful for confirming trend directions and spotting potential reversals when the ease of movement diverges from the price action.

| Input        | Default | Description                                                         |
|:-------------|:--------|:--------------------------------------------------------------------|
| `Length`     | 14      | The period over which the moving average of the Ease of Movement is calculated. This smoothing helps to filter out noise in the daily movements and provides a clearer trend signal. |
| `Division`   | 100,000,000 | The division factor used to scale the Ease of Movement values, making the output more manageable and comparable across different stocks or time periods. |

| Output Example            | Type  | Description                                                                       |
|:--------------------------|:------|:----------------------------------------------------------------------------------|
| `Ease of Movement: 0.75`  | Float | Indicates the current Ease of Movement value. Higher positive values suggest the stock is moving upward with ease, while lower or negative values may indicate difficulty in upward movement, suggesting potential resistance or bearish sentiment.

### Klinger Volume Oscillator
The Klinger Volume Oscillator (KVO) is a volume-based technical analysis indicator created by Stephen Klinger. It is designed to predict the long-term trend of money flow while also capturing short-term fluctuations. The KVO aims to highlight the difference between the volume flowing in and out of a security, calculated over different timeframes.

The oscillator uses two exponential moving averages (EMAs) of the volume, one fast and one slow, to construct the oscillator line. The difference between these EMAs is the KVO line. A signal line, which is also an EMA, is then derived from the KVO to generate trading signals through crossovers. Positive values typically indicate buying pressure, while negative values indicate selling pressure, making it useful for identifying trend reversals and confirming bullish or bearish phases.

| Input        | Default | Description                                                         |
|:-------------|:--------|:--------------------------------------------------------------------|
| `Fast`       | 34      | The number of periods used for the fast EMA, capturing short-term volume trends. |
| `Slow`       | 55      | The number of periods used for the slow EMA, reflecting longer-term volume trends. |
| `Signal`     | 13      | The number of periods used for the signal line, which smooths the KVO to aid in generating more reliable trading signals. |

| Output Example            | Type  | Description                                                                       |
|:--------------------------|:------|:----------------------------------------------------------------------------------|
| `KVO: 200`                | Integer | Indicates the current Klinger Volume Oscillator value, reflecting the net volume buying or selling pressure. |
| `Signal: 150`             | Integer | Represents the signal line derived from the KVO. Crossovers with the KVO can indicate potential buying or selling opportunities.

### Money Flow Index
The Money Flow Index (MFI) is a momentum indicator that incorporates both price and volume to measure buying and selling pressure on a security. Often referred to as the volume-weighted relative strength index (RSI), the MFI provides insight into how changes in price and volume affect the perceived value of a stock.

The MFI is calculated by creating a ratio of positive and negative money flows (the sum of the volumes on days the price went up and down, respectively), and then transforming that ratio into an index form. The result is a value between 0 and 100, which helps traders identify overbought or oversold conditions based on the levels of 20 (oversold) and 80 (overbought).

This indicator is particularly useful for confirming trend reversals when divergences occur between the MFI and the stock price, indicating potential points of reversal due to underlying buying or selling pressures not reflected in the price alone.

| Input        | Default | Description                                                         |
|:-------------|:--------|:--------------------------------------------------------------------|
| `Length`     | 14      | The number of periods over which the Money Flow Index is calculated. This duration is used to average out the positive and negative money flows to create a more stable and reliable indicator. |

| Output Example            | Type  | Description                                                                       |
|:--------------------------|:------|:----------------------------------------------------------------------------------|
| `Money Flow Index: 65`    | Integer | Indicates the current value of the Money Flow Index. Values above 80 suggest overbought conditions, while values below 20 indicate oversold conditions.

### Negative Volume Index
The Negative Volume Index (NVI) is a technical analysis indicator used to identify how a stock's price moves on days when its trading volume has decreased from the previous session. It is based on the premise that decreased volume days are predominantly driven by the more informed investors. NVI focuses solely on periods of lower volume, unlike its counterpart, the Positive Volume Index (PVI), which focuses on higher volume days.

The calculation of NVI starts with a base value (usually 1000) and adjusts this value only on days when the trading volume is lower than the previous day. If the price increases on such a day, the NVI is adjusted upward; if the price decreases, the NVI moves down. Typically, the NVI is smoothed with a moving average over a specified length to provide clearer trend signals.

This indicator is useful for detecting the subtler shifts in market sentiment influenced by sophisticated investors and can signal potential bullish conditions when it rises.

| Input        | Default | Description                                                         |
|:-------------|:--------|:--------------------------------------------------------------------|
| `Length`     | 14    | The period over which the NVI is smoothed with a moving average, typically to reduce the noise and highlight the longer-term trends more clearly. |

| Output Example            | Type  | Description                                                                       |
|:--------------------------|:------|:----------------------------------------------------------------------------------|
| `Negative Volume Index: 1500`    | Integer | Indicates the current value of the Negative Volume Index. An upward trend in NVI suggests that informed buying is taking place, potentially signaling a bullish outlook.

### On Balance Volume (OBV)
On Balance Volume (OBV) is a momentum indicator that uses volume flow to predict changes in stock price. Developed by Joseph Granville, OBV is based on the idea that volume precedes price movements. It adds volume on days the stock closes higher and subtracts on days it closes lower. The cumulative total of these calculations forms the OBV line, providing a running total of volume and its direction.

OBV is an excellent tool for confirming trends. A rising OBV reflects positive volume pressure that can lead to higher prices, whereas a falling OBV indicates negative volume pressure. Traders often look for divergences between OBV and price to predict price reversals. For example, if the price makes a new high but the OBV does not, it suggests the high price is not supported by volume and may reverse.

The input `length` typically isn't used directly in the basic calculation of OBV since OBV is a cumulative measure of volume and price changes from one period to the next. However, some may use it in conjunction with OBV to apply a smoothing technique, like a moving average, to make OBV signals easier to interpret.

| Input        | Default | Description                                                         |
|:-------------|:--------|:--------------------------------------------------------------------|
| `Length`     | 1       | While traditionally OBV doesn't have a period setting, a length of 1 suggests viewing OBV without any smoothing. This could alternatively be used to define the smoothing period for a moving average applied to the OBV for trend analysis. |

| Output Example            | Type  | Description                                                                       |
|:--------------------------|:------|:----------------------------------------------------------------------------------|
| `On Balance Volume: 500,000`    | Integer | Indicates the current value of the On Balance Volume. Rising OBV values suggest accumulation, while falling values indicate distribution, potentially leading to price movements in respective directions.


### Positive Volume Index (PVI)
The Positive Volume Index (PVI) is a technical analysis tool used to gauge the impact of rising trading volumes on the price of a stock. It operates under the premise that unsophisticated investors trade primarily on days when volume increases. PVI is intended to track how volume increases affect stock prices, reflecting the buying pressure that comes with higher volume.

On days when the trading volume increases from the previous session, the PVI is adjusted upwards or downwards based on the price movement; if the stock price rises, PVI goes up, and if the price falls, PVI decreases. When the volume decreases, the PVI remains unchanged. Like its counterpart, the Negative Volume Index (NVI), it can offer insights into market trends influenced by investor sentiment and activity on high volume days.

Typically, PVI is used with a smoothing mechanism, such as a moving average, to filter out the daily price and volume noise. The `length` parameter would typically refer to this smoothing length, helping to make trends clearer.

| Input        | Default | Description                                                         |
|:-------------|:--------|:--------------------------------------------------------------------|
| `Length`     | 1       | The length parameter for PVI often refers to the smoothing mechanism applied, like a moving average. A length of 1 suggests analyzing the PVI without any smoothing, directly reflecting daily volume and price changes. |

| Output Example            | Type  | Description                                                                       |
|:--------------------------|:------|:----------------------------------------------------------------------------------|
| `Positive Volume Index: 1050`    | Integer | Indicates the current value of the Positive Volume Index. An upward trend in PVI can suggest bullish sentiment driven by increased investor participation on volume-heavy days.

### Price Volume Trend (PVT)
The Price Volume Trend (PVT) is a momentum indicator that integrates volume with price change in an attempt to confirm the strength of price trends or through divergences, warn of weak movements. PVT is similar to On Balance Volume (OBV) in that it is a cumulative total of volume adjusted according to the day's price change. However, PVT incorporates the percentage of price change in its calculation, offering a slightly more nuanced view of the volume’s impact on price.

PVT adds or subtracts a percentage of the daily volume to or from a cumulative total. This percentage is determined by the price change ratio from the previous day. The indicator moves in the direction of price trends; if the price finishes higher than the previous day, a proportion of the day's volume is added to the PVT. If the price finishes lower, a proportion is subtracted. This technique makes PVT sensitive to both volume changes and how substantially the price moves.

PVT can be particularly useful for identifying bullish or bearish trends based on whether the indicator is rising or falling, and it can also help identify divergences which may indicate potential reversals if the price and PVT are not moving in the same direction.

| Output Example            | Type  | Description                                                                       |
|:--------------------------|:------|:----------------------------------------------------------------------------------|
| `Price Volume Trend: 25000`    | Integer | Indicates the current value of the Price Volume Trend. Rising values suggest strong buying pressure, while falling values may indicate selling pressure or a weakening trend.

## Other Indicators

### Hurst Exponent
The Hurst Exponent is used to differentiate between a random walk and a trending series.

| Input       | Default | Description                  |
|:------------|:--------|:-----------------------------|
| `Length`    | 20      | Window Period                |

| Output Example | Type  | Description                                                                |
|:---------------|:------|:---------------------------------------------------------------------------|
| `0 to 1`       | Float | A Hurst exponent value between 0.5 and 1.0 indicates persistent behavior, 0 and 0.5 is indicative of anti-persistent behavior |


---

### Hurst RS
The Hurst Rescaled range is a measure of the relative strength of the Hurst Exponent.

| Input       | Default | Description                  |
|:------------|:--------|:-----------------------------|
| `Length`    | 20      | Window Period                |

| Output Example | Type  | Description                                                                |
|:---------------|:------|:---------------------------------------------------------------------------|
| `0 to 1`       | Float | A Hurst exponent value between 0.5 and 1.0 indicates persistent behavior, 0 and 0.5 is indicative of anti-persistent behavior |


---

### Times UP/Down
Calculates the number of consecutive up OR down candles.

| Input Example            | Default  | Type      | Description                                            |
|:-------------------------|:---------|:----------|:-------------------------------------------------------|
| `Times Up or Times Down` | Times Up | Drop Down | Whether to return the number of Times Up or Times Down |

| Output Example | Type    | Description                                                                                                            |
|:---------------|:--------|:-----------------------------------------------------------------------------------------------------------------------|
| `3`            | Integer | If there has been 3 green candles in a row, it would return 3 if Times Up is selected, but 0 if Times Down is selected |

---

### Times Up Down Ratio
Calculates the ratio of consecutive up and down candles.

| Input       | Default | Description                  |
|:------------|:--------|:-----------------------------|
| `Length`    | 20      | Window Period                |

| Output Example | Type  | Description                                                                                                            |
|:---------------|:------|:-----------------------------------------------------------------------------------------------------------------------|
| `0.65`         | Float | If your `Length` is `10`, and there have been 6 green candles and 4 red candles, it would return `0.6` |

---

### VIX

The VIX is a measure of market expectations of near-term volatility conveyed by S&P 500 stock index option prices.

| Input       | Default | Description                  |
|:------------|:--------|:-----------------------------|
| `Length`    | 20      | Window Period                |
| `Duration`  | 252     | 252 (Trading Days per year)  |

---

### Candlestick Patterns
![Image title](/data_nodes/ta_datapoints/ta54.png){ align=right }

- Hanging Man
- Bearish Harami
- Bullish Harami
- Grave Stone Doji
- Dark Cloud Cover
- Doji
- Doji Star
- Dragonfly Doji
- Bearish Engulfing
- Bullish Engulfing
- Hammer
- Inverted Hammer
- Morning Doji Star
- Piercing Pattern
- Rain Drop
- Rain Drop Doji
- Star
- Shooting Star
