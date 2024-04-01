## Overview 

The Strategy details node is the main node in the strategy, it is where all of your nodes terminate, and where you can dial in your risk levels with the additional settings.

## Node Connections
Nodes are connected to the Strategy Details node in the following ways

### Take Profits
You can attach as many take profits to the strategy as you like, these will be triggered when the conditions specified per take profit are met, you can have unlimited take profits, the limit is the minimum order size of the exchange, and the % you are exiting.
!!! warning "Important"

    Take profits will only ever be allowed to add upto 100%, for example, if you have 3 takes profit nodes attached to the strategy details node, and they are set to exit 25%, 50% and 75%, the last node to be triggered (75%) would only exit 25%, due to there only being 25% of the position left to exit.

### Scale In
You can also attach as many scale ins to the strategy as you like, these will be triggered when the conditions specified per scale in are met, you can have unlimited scale ins, the limit is the minimum order size of the exchange, and the % you are entering.

### No Trading Times
You can attach as many no trading times to the strategy as you like, these will stop the strategy trading, during the hours you specify, you can have unlimited non trading times

### OR | Entry Logic
This is where you can attach either a `Create Signal` or a `Signal Group` node, these will be evaluated to determine if the strategy should enter a trade or increase your current position, this behaviour can also be modified by the `Strategy Details` , you can have unlimited nodes attached to the `OR | Entry Logic` node.

### OR | Exit Logic
This is where you can attach either a `Create Signal` or a `Signal Group` node, these will be evaluated to determine if the strategy should reduce the amount held in a position, you can have unlimited nodes attached to the `OR | Entry Logic` node.

### Hybrid AI Optimization
This is where you can attach a `Hybrid AI Optimization` node, this will allow you to optimize your strategy using AI, you can only have one attached to the `Hybrid AI Optimization` connection.

Ultimately, after you define your AI settings, we perform the following steps:

1. We run the strategy with the default settings (NO AI Training)
2. We use the outcome of trades to label the dataset.
3. We train the AI model on the labeled dataset, aiming to predict the outcome of trades, aiming to reduce the number of losing trades taken.
4. We run the strategy with the AI model, and compare the results to the default strategy.

---
## Inputs
![signal_group_example](images/strategy_details.png){ width="250" align="left"}

| Name                                |   Type   |                                                                                                   Description                                                                                                   |
|-------------------------------------|:--------:|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------:|
| Name                                |  String  |                                                                 What to name your strategy, this name should be unique amongst your strategies                                                                  |
| Exchange                            | Dropdown |                                                                        Which exchange you want to backtest on/run your strategy live on                                                                         |
| Side                                | Dropdown |                                                                                Whether you are running a short or long strategy                                                                                 |
| Backtest Start Date                 |  String  |                                                            This is the date to backtest from, should be in YYYY-MM-DD format or YYYY-MM-DD HH:MM:SS                                                             |
| Backtest End Date                   |  String  |                                                            This is the date to backtest from, should be in YYYY-MM-DD format or YYYY-MM-DD HH:MM:SS                                                             |
| Breakeven Stop Loss                 | Checkbox |            When ticked, it will be activated upon any type of non-full exit, e.g. if you exit 30% of the position at 1% profit, it will then place a stop loss at your `Average Entry Price + Fees`             |
| Time Based Trailing SL              | Checkbox |                                                                  When ticked, will use the following two settings to decrease your Stop Loss %                                                                  |
| Period for Time based Trailing Stop | Integer  |                                                               Number of periods `(Lowest TF * Periods)` between each reduction of the Stop Loss %                                                               |
| %Change for Time Based Trailing SL  |  Float   |                                       Amount to decrease the Stop Loss % by, <br/>e.g. If your Stop Loss % is 0.5% and your %Change is 0.1% the next value would be 0.4%                                        |
| Starting Balance                    | Integer  |                                                                                       Simulated balance for your backtest                                                                                       |
| Leverage                            | Integer  |                                                       The amount of Leverage to use (Only works where leverage can be used, otherwise it will be ignored)                                                       |
| Periods Between Trades              | Integer  |                The number of periods to wait `(Lowest TF * Periods)` between taking another action, So if you get another signal between this time has passed, then that signal will be ignored                 |
| % Portfolio for Entry               | Integer  |                                                                        The amount of your available balance to commit to a single entry                                                                         |
| % Max usage of Portfolio            | Integer  |                                                                           The total amount of your available balance that can be used                                                                           |
| Stop Loss %                         | Integer  |                                                                         Stop Loss % of the trade (Calculated from Average Entry Price)                                                                          |
| No Activity Stop Loss Periods       | Integer  |                                   The number of periods `(Lowest TF * Periods)` to wait to exit the position, if there has been no signals, or take profits or scale in's etc                                   |
| Trading Fee %                       | Integer  |                                                                        The Trading Fee % Which this particular exchange is charging YOU                                                                         |
| Profit Scaling                      | Integer  |                                                                    Whether to enable Profit Scaling (You must have Scale in nodes connected)                                                                    |
| Allow Signal on Scale in            | Integer  | When Ticked additional signals (entry logic) could be acted upon despite scale in logic is used, otherwise only first signal (entry logic) is allowed, and only scale in will increase the size of the position |
| Breakeven SL On Profit Scaling      | Integer  |   Whether to activate Breakeven SL after a profit scale in, for example, if you scale in at 0.5% profit, your average entry price would increase by 0.25% and thus with it unticked it could immediately exit   |
| Run Backtest                        | Integer  |                                                                                                Run the backtest                                                                                                 |
| Save Strategy                       | Integer  |                                                                                                Save the strategy                                                                                                |
| Load Strategy                       | Integer  |                                                                                                Load the Strategy                                                                                                |
| Set Strategy Live                   | Integer  |                                                                                       Set the strategy live (Coming soon)                                                                                       |
