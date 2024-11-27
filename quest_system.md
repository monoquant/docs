# Monoquant Quest System

## What is it?
The MONQ quest system has been specifically designed to help you learn how to use the platform, and also to reward you for your efforts. We have created a system that will reward you for completing tasks, and also for recruiting others to the platform.
Starting with Zen points, which upon release of our token, will be converted to a fixed pool of 2% of the total supply.
Once the MONQ token is released, you will be directly rewarded with the MONQ token, with a weekly distribution.


## Types of Quests

| Quest Line          | Description                                                                                                                                                               | Rewards                      |
|---------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------|
| Find Your Zen       | Find your Zen will reward Zen points for Hourly & Daily tasks, which can be created on the fly, either automatically or by the team to react to market conditions         | Zen Points                   |
| Build The Monastery | This is our affiliate program, where you will be rewarded points and also achievements for recruiting Monqs to the cause!                                                 | Zen Points + Achievements    |
| Enlightenment       | Our achievement system, which will help you learn how to use our platform, use new features, and also win RWA prizes from our partners! These will be released in seasons | Zen Points + Bragging rights |
| Master Your Zen     | Master your zen, will reward Zen points for Weekly & Monthly challanges, along with Unique MONQ NFT's, whose traits will grant you special functions within the platform  | Zen Points + MONQ NFT's      |


## Quest Reward "Halving"

We have n achievement “season” 
Each epoch have a number of reward

The epoch 1 have x0 reward

The epoch 2 have x0*0.9

The epoch 3 have epoch2*0.9

….

The epoch n have (0.9)^n*x0 rewards

We're dealing with a geometric sequence representing the rewards across 𝑛*n* epochs, where each subsequent epoch offers 90% of the previous epoch's rewards.

Let's denote:

- 𝑥0 as the reward for the first epoch.
- 𝑟=0.9 as the common ratio.
- 𝑈𝑛  as the reward for the *n*th epoch.

$$
\sum_{i=1}^{n}U_i=x_0\sum_{i=1}^{n} (0.9)^i
$$

We're need to find the value of x0

$$
𝑈𝑛=𝑥0×r^n
$$

Since *Un* forms a geometric sequence, its sum up to the 𝑛-th term can be calculated using the formula for the sum of a finite geometric series:

So 

$$
\sum_{i=1}^{n}U_i=TotalRewards
$$

then

$$
TotalRewards=x_0\sum_{i=1}^{n} (0.9)^i
$$

Given that the total reward is the sum of rewards across all epochs, we equate it to 

$$
\text{Total Reward} = x_0 \left( \frac{1 - (0.9)^n}{1 - 0.9} \right)
$$

Rearranging to solve for 𝑥0, we get:

$$
x_0 = \text{Total Reward} \left( \frac{1 - 0.9}{1 - (0.9)^n} \right)
$$