## Understanding Backtest Results

### Sharpe Ratio

The **Sharpe Ratio** is a measure used to assess the risk-adjusted return of an investment. It compares the excess 
returns (returns beyond the risk-free rate) with the volatility of those returns.

```math
\text{Sharpe Ratio} = \frac{\text{Mean Excess Return} \times \text{Annualisation}}{\text{Standard Deviation of Excess Return} \times \sqrt{\text{Annualisation}}}
```

Where:
- **Mean Excess Return** is the average return above the risk-free rate.
- **Standard Deviation of Excess Return** represents the volatility or risk of those returns.
- **Annualisation** adjusts the daily returns to an annualized figure, computed as _Trading Days / Days Live_

For crypto the number of trading days is considered to be 365.25 and risk-free rate is 3.77%

**Interpretation:**  
A higher Sharpe Ratio indicates better risk-adjusted returns. Typically:

- **Sharpe > 1** is good.
- **Sharpe > 2** is very good.
- **Sharpe > 3** is excellent.


### Sortino Ratio

The **Sortino Ratio** is similar to the Sharpe Ratio but focuses on downside risk, which means it only penalizes 
negative returns. It gives a more accurate picture of the risk if the investor is only concerned with the downside.

```math
\text{Sortino Ratio} = \frac{\text{Mean Excess Return} \times \text{Annualisation}}{\text{Downside Deviation} \times \sqrt{\text{Annualisation}}}
```

Where:
- **Downside Deviation** measures the volatility of only negative returns (as opposed to overall volatility like the 
 Sharpe Ratio)
- **Annualisation** adjusts the daily returns to an annualized figure, computed as _Trading Days / Days Live_

For crypto the number of trading days is considered to be 365.25 and risk-free rate is 3.77%

**Interpretation:**  
A higher Sortino Ratio indicates a better risk-adjusted return, especially in cases where you more 
sensitive to downside risk. Typically:

- **Sortino > 1** is good.
- **Sortino > 2** is very good.
- **Sortino > 3** is excellent.


### Beta

**Beta** is a measure of the sensitivity of an investment's returns relative to the returns of the overall market. 
It represents how much an investment is expected to move in response to market changes.

```math
\beta = \frac{\text{Covariance of Strategy and Market Returns}}{\text{Variance of Market Returns}}
```

Where:
- **Covariance** measures how the strategy's returns move with the market.
- **Variance** measures how much the market's returns fluctuate.

**Interpretation:** 

Beta indicates how volatile the strategy is compared to the market.

- **Beta = 1**: The strategy moves in line with the market.
- **Beta > 1**: The strategy is more volatile than the market.
- **Beta < 1**: The strategy is less volatile than the market.


### Alpha (%)

**Alpha** measures the excess return of a strategy compared to what would be expected based on its beta and the market 
return. It represents the strategy's ability to outperform the market on a risk-adjusted basis.

```math
\alpha = (\text{Annual Strategy Return} - \text{Risk-Free Rate}) - \beta \times (\text{Annual Market Return} - \text{Risk-Free Rate})
```

Where:

- **Annual Strategy Return** is the average annualized return of the strategy.
- **Annual Market Return** is the average annualized return of the market.
- **Risk-Free Rate** (given as 3.77%) is the return on a risk-free investment, adjusted for daily returns as:

```math
\text{Daily Risk-Free Rate} = (1 + 0.0377)^{\frac{1}{365.25}} - 1
```

**Interpretation:**

Alpha shows the strategy's ability to generate excess returns beyond the expected performance given its risk (Beta).

- **Alpha > 0**: The strategy has outperformed the market after adjusting for risk.
- **Alpha < 0**: The strategy has underperformed the market after adjusting for risk.


### R-Squared (R²)

**R-Squared (R²)** is a statistical measure of how closely the strategy’s returns are correlated with the market’s 
returns. It provides insight into how much of the strategy's movement is explained by the market.

```math
R^2 = \text{Pearson Correlation between Strategy and Market Returns}^2
```

Where:
- **Correlation** measures the strength and direction of a linear relationship between the strategy and market returns.

**Interpretation:**

**R-Squared** tells you how much of the strategy's returns are explained by the market.
- **R² = 1**: The strategy's returns are perfectly correlated with the market.
- **R² = 0**: No correlation between the strategy's returns and the market.



### CAGR %
**CAGR (Compound Annual Growth Rate)** is a measure used to describe the mean annual growth rate of an investment over 
a specified period of time, assuming the profits were reinvested at the end of each period.

```math
\text{CAGR \%} = \left( \left( \frac{\text{Ending Balance}}{\text{Starting Balance}} \right)^{\frac{\text{Trading Days}}{\text{Days in Records}}} - 1 \right) \times 100
```

Where:
- **Trading Days** is the total number of trading days in a year (for crypto = 365.25).
- **Days in Records** is the number of days covered by the data.

**Interpretation:**

CAGR % gives a smoothed annual rate of growth over the period being analyzed, making it a useful measure to compare 
the growth rate of different investments over time, regardless of fluctuations.


### MAR Ratio

The **MAR Ratio** (Managed Account Ratio) is a measure that compares the Compound Annual Growth Rate (CAGR) to the 
maximum drawdown experienced by a strategy. It provides insight into how much return is generated for each unit of 
risk (defined by the drawdown).

```math
\text{MAR Ratio} = \frac{\text{CAGR \%}}{\text{Max Drawdown \%}}
```

Where:
- **CAGR %** is the Compound Annual Growth Rate of the strategy.
- **Max Drawdown %** is the largest peak-to-trough decline in the strategy’s balance over the time period, 
expressed as a percentage.

**Interpretation:**

- A **higher MAR Ratio** indicates a more favorable risk-return relationship, as it shows that the strategy achieved 
significant growth relative to the risk (drawdown) it took on.
- If the **Max Drawdown is 0 or positive**, the MAR Ratio can be considered infinite, as no drawdown has occurred.

The **MAR Ratio** helps assess how efficiently a strategy converts risk (drawdown) into growth (CAGR). A higher ratio 
signifies better risk-adjusted performance, making it a useful metric for comparing different strategies over varying 
time periods.


### Skew
Skewness measures the asymmetry of the return distribution. Positive skew indicates a distribution with a long
right tail (more frequent small losses and few large gains), while a negative skew indicates a long left tail.

-0.5 to 0.5 - approximately symmetric
-1 to -0.5 and 0.5 to 1 - moderate skewness
<-1 amd >1 - high skewness

High positive skewness might indicate occasional large gains, while high negative skewness suggests
occasional large losses.


### Excess Kurtosis
Excess Kurtosis measures the "tailedness" of the distribution. A high kurtosis value indicates heavy tails
(extreme values are more likely), while a low kurtosis value indicates light tails.

Excess Kurtosis = kurtosis - 3

High kurtosis (especially positive) is often associated with "fat tails," meaning that the distribution has a
higher likelihood of extreme values (large gains or losses) than a normal distribution, which is important
for risk management.

**Excess Kurtosis = 0:**
    
The distribution has kurtosis equal to 3, meaning it has the same tail heaviness and peak as a normal
distribution. Such a distribution is called mesokurtic.

**Positive Excess Kurtosis ( > 0):**

The distribution has heavier tails and a sharper peak compared to a normal distribution. This means that
there are more extreme outliers (values far from the mean). Distributions with positive excess kurtosis
are called leptokurtic.
For example, an excess kurtosis of 2 means that the distribution has significantly fatter tails and more
outliers than a normal distribution.

**Negative Excess Kurtosis ( < 0):**

The distribution has lighter tails and a flatter peak compared to a normal distribution. This indicates
fewer extreme outliers and a more uniform distribution of values. Distributions with negative excess
kurtosis are called platykurtic.
For example, an excess kurtosis of -1 means that the distribution is less prone to outliers and has
thinner tails than a normal distribution.


### Risk of Ruin

Risk of Ruin is the probability that you will lose so much capital that you can no longer continue trading.

```math
\text{Kelly Fraction} = \text{Win Rate} - \text{Lose Rate}
```

```math
\text{Risk of Ruin \%} = \left( \frac{\text{Lose Rate}}{\text{Win Rate}} \right)^{\frac{\text{Stop Loss %}}{\text{Kelly Fraction}}}
```

In cases when Kelly Fraction is equal to 0, for example, when Win Rate and Lose Rate both are equal to 0.5, then the 
Risk of Ruin will equal 100% because the strategy has no edge. 
