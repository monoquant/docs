## What is a Data Point?

Data Point is a basic building block in the Strategy Builder that allows you to select the data you want to use in 
your strategy and in your indicators. For simplification, you can think of a Data Point node as of a standard candlestick 
but in practice it looks more like a cluster/footprint chart.

### How the data looks behind the scene
In cluster chart, candlesticks have more data that is binned by price levels, so at each price level you know exactly:

* How much base (or quote) asset was bought and sold
* Total volume seen
* How many buy (or sell) trades happened
* Total number of trades that happened
* Difference (delta) between buy and sell volume or number of buy and sell trades

<img src="/data_nodes/images/cluster_chart_example.png" width="550" height="250" />   

### Options you have
Data Point contains the data such as:

- OHLCV values
- buy(sell)_volume
- number_of_buy(sell)_trades

Which allow you to create a much more refined conditions for your trading signals.

<img src="/data_nodes/images/data_point_ohlcv.png" width="250" height="300" />     
<img src="/data_nodes/images/data_point_not_ohlcv.png" width="250" height="300" />

The data will be selected based on the Time Frame you use in the node to which you attach the Data Point. For example,
on the screenshot, the Data Point was attached to a [Create Signal Node](C:\Users\win_d\PycharmProjects\base_systems\MQ_Guides\What_Is_Guides\strategy_nodes\Create_Signal.md)
where a 5-minute Time Frame was selected, so the system will be checking if **5m_CLOSE** **>** **30.42**

<img src="/data_nodes/images/data_point_tf_example.png" width="300" height="300" />

Data Points don't take any inputs in. They can only be used as inputs for the rest of the Node types such as Arithmetic 
Data Point, Stat Data Point, Create Signal, etc.

### Aggregation methods for non-OHLCV options
For non-ohlcv options in the Data Point, you will also see another drop down list with aggregation options:

1. _min_ - select the smallest value in the period
2. _max_ - select the largest value in the period
3. _sum_ - sum of values in the period, for example, to get a total of buy_amount in a period
4. _mean_ - get the average value in period
5. _first_ - first value that was recorded in the period (like candle open price)
6. _last_ - last value that was recorded in the period (like candle close price)
7. _raw_ - use raw cluster datapoint like on the first screenshot

