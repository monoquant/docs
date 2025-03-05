### What is the `AI Models` Node?  
- The AI Model node is where you can train/test AI models and also the node used for hybrid optimization of an existing strategy. 
- You can select from a range of classification and regression models.
- The AI Model node allows you to fine-tune the parameters of each model by ticking `Manual Tuning`
- You also have the ability to let the model perform hyperparameter optimization to find the best parameters for your dataset, by not ticking `Manual Tuning`

<img src="/data_nodes/images/ai_model_labeled.png" />     

## **How to use the AI Models node**
The AI model card consists of constant elements and dynamic specific elements that relate to a particular model. 
Think of it as way to create an unlimited amount of strategies with different models and parameters.    

### AI Model Name
You use this to set the desired name for the model. This is also used to load a model that has been previously trained on your account.

### Model Selection
Here you will find all the models that are available to use on our platform. Models are broken down into 3 groups: 

- Classifiers - Aim to predict market trends that reach desired Y outcomes 
- Regressors - Aim to predict market prices over a given period of time
- ~~Neural Networks~~ (Coming soon)

### Train Switch
Ticking this will allow the model to train, if not selected and no model exists with same name, it will train a new model.

!!! info "Regarding Naming"
    If you have an already trained model, with the same name, re-training will overwrite previous trained model with that name.

### Manual Tuning
Expands options for selected model, where you can then tune model parameters, if unsure leave unticked and our optimization engine will handle it.

### Normalize Data
This allows you to normalize the data before training the model. Normalization is a common preprocessing step that scales the data to a standard range such as -1 to 1 or 0 - 1. This can help models have better performance, and it's model dependant.

### Enforce Market Regimes
This allows you to enforce market regimes on the model. Market regimes are distinct periods in the market characterized by specific behaviors or conditions. By enforcing market regimes, you can help the model learn patterns and relationships that are specific to different market conditions, such as trending, ranging, or volatile markets.

### Validation Methods
This allows you to select the validation method that the model will use to evaluate its performance. The available validation methods are: 
- Hold-out (default)
- K-Fold 
- Purged K-Fold 
- Walk-Forward

### Evaluation Data Handler
Data selection method. The options are: 
- Sliding window (default) uses data in original order 
- Resample data shuffles data before splitting
- Chunk selection selects data in chunks

### Fitness Regime
Method used to classify the fitness of the features before being ingested by the model. The options are: PCA or AGGLOMERATION, with further fitness evaluations run with each method. 

### Class balancing
This allows you to select which class balancing methods you would like to use. The ones available are:
- SMOTE (Synthetic Minority Over-sampling Technique): SMOTE is a popular oversampling technique used to address class imbalance. It works by creating synthetic samples from the minority class rather than replicating them. This is done by selecting similar instances (neighbors) and creating new examples along the line segments connecting these instances in the feature space. By generating synthetic examples, SMOTE aims to balance the class distribution without introducing exact duplicates of existing minority class samples.
- ADASYN (Adaptive Synthetic Sampling): ADASYN is an extension of the SMOTE technique that adapts the generation of synthetic samples according to the density of minority class instances. It focuses more on generating samples in regions of the feature space where the density of minority instances is low. By doing so, ADASYN aims to alleviate the problem of overfitting that may occur with SMOTE in regions of high minority class density.
- Undersampling: Undersampling involves reducing the number of instances in the majority class to balance its distribution with the minority class. This can be achieved by randomly removing instances from the majority class until the desired balance is achieved. While undersampling is a straightforward approach, it may lead to loss of information since it discards potentially valuable data from the majority class.
- Oversampling: Oversampling involves increasing the number of instances in the minority class to balance its distribution with the majority class. This can be done by replicating existing instances, generating synthetic samples (as in SMOTE and ADASYN), or other techniques. Oversampling aims to ensure that the classifier is exposed to a sufficient number of minority class examples during training, thereby improving its ability to generalize.
- Random Undersampling: Similar to the Undersampling method, Random Undersampling involves randomly removing instances from the majority class to balance the class distribution. This approach is simple to implement but may result in the loss of valuable information from the majority class.
- Random Oversampling: Similar to the Oversampling method, Random Oversampling involves randomly replicating instances from the minority class to balance the class distribution. This approach is straightforward but may lead to overfitting if not carefully implemented.

!!! info "Further Class balancing refinements for SMOTE/ADASYN"
    - Minority:

    This method focuses only on the minority class, which typically has fewer instances compared to the other classes in the dataset.
    Techniques like oversampling (e.g., SMOTE, ADASYN) or generating synthetic data are often applied to increase the representation of the minority class.


    - Majority:
    
    The majority class refers to the class with the highest number of instances in the dataset.
    Methods such as undersampling or reducing the representation of the majority class can be applied to balance the distribution between classes.
    
    - Not Majority:
    
    This method encompasses all classes in the dataset except for the majority class.
    It involves handling the class distribution for all classes other than the one with the highest number of instances.
    
    - Not Minority:
    
    Similar to "Not Majority," this method includes all classes in the dataset except for the minority class.
    The focus is on handling class distribution for all classes other than the one with the fewest instances.
    
    - All:
    
    This method suggests considering the entire dataset, including all classes, for class balancing techniques.
    It involves addressing class imbalances collectively across all classes present in the dataset.


### Filter TP %
This allows you to filter out trades that have a take profit percentage below the specified threshold. This can help you focus on trades that have a higher potential for profit.

### Filter SL %
This allows you to filter out trades that have a stop loss percentage above the specified threshold. This can help you avoid trades that have a higher risk of loss.

### Filter Window
This allows you to specify the window size for filtering trades based on the take profit and stop loss percentages. The filter window determines the number of trades to consider when applying the take profit and stop loss filters.

### Periods between Labels
This allows you to specify the number of periods between labels. The periods between labels determine the spacing between training labels, which can affect the model's ability to learn patterns and make predictions.


### Labelling method 
Allows you to select the labelling method the model will use as the Y predictor.

Here are the current labelling methods that are available to use on the AI models card - 
1. `Triple Barrier` Generates training label signals based on the triple barrier method. The user can specify the barrier width and the period over which the barrier is calculated.
2. `Generic` Generates training label signals based off the future outcome similar to triple barrier with 1:1 risk ratio
3. `AI Inference` Generates training label signals based on the peaks and troughs of the price over a given period. 
4. `Peaks and Troughs` Generates training label signals based on the peaks and troughs of the price over a given period. 
5. `Scalper Paradigm` Generates training label signals based on the peaks and troughs of the price over a given period. 
6. `Swinging Paradigm` Generates training label signals based on medium-term price swings, capturing cyclical market behavior.
7. `Volatility Paradigm` Generates training label signals based on measures of volatility, highlighting periods of high and low price fluctuation.
8. `Trend Paradigm` Generates training label signals by identifying sustained market trends, suitable for trending market conditions.
9. `Structural Paradigm` Generates training label signals by detecting structural breaks in the market, which signal significant shifts in market behavior.
10. `STD Paradigm` Generates training label signals based on the standard deviation of price movements, providing a quantitative measure of dispersion and risk.


### Feature Selection 
Contains options for feature selection methods that models have access too. Each method attempts to sort and select best possible features that align with feature selection method.

### Feature Count
Number of features you want the model to train with, encourage you to experiment with different feature values to find best performing range for your model. 

## **Available Models**
To view parameter explanation please click on the model below to see more details on their documentation on the scikit-learn platform.


### Classification models

- [Random forest](https://scikit-learn.org/stable/modules/generated/sklearn.ensemble.RandomForestClassifier.html)
- [XGBOOST Gradient Boosting](https://scikit-learn.org/stable/modules/generated/sklearn.ensemble.GradientBoostingClassifier.html)
- [Support vector Classification](https://scikit-learn.org/stable/modules/generated/sklearn.svm.SVC.html)
- [K-nearest neighbours](https://scikit-learn.org/stable/modules/generated/sklearn.neighbors.KNeighborsClassifier.html)
- [Adaboost](https://scikit-learn.org/stable/modules/generated/sklearn.ensemble.AdaBoostClassifier.html)
- [Catboost](https://catboost.ai/en/docs/concepts/python-reference_catboostclassifier)
- ~~[LSTM](https://www.tensorflow.org/api_docs/python/tf/keras/layers/LSTM)~~(Coming soon)

### Regression Models
- [Support vector regression](https://scikit-learn.org/stable/modules/generated/sklearn.svm.SVR.html)
- [Random forest regression](https://scikit-learn.org/stable/modules/generated/sklearn.ensemble.RandomForestRegressor.html)
- [XGBoost regression](https://scikit-learn.org/stable/modules/generated/sklearn.ensemble.GradientBoostingRegressor.html)

## **Feature Selection**

### Correlation (Absolute, Inverse)
Correlation-based feature selection involves measuring the correlation between each feature and the target variable. Features are ranked from highest to lowest score then top N feature that match with feature count selected will be used by the model. Important note whilst causation is not implied, correlation can capture be elements X that predict Y outcomes.
- Inverse correlation does opposite, it prioritizes features that have a negative correlation with the target variable.
- Absolute correlation does not take into account the direction of the correlation, it only looks at the strength of the correlation.

---

### Recursive Feature Elimination
  Ranks features based on their importance and eliminates the least important features until the desired number of features is reached.

---

### Uni-variate Feature Selection
Analyzes each single variable within the data-set and ranks them based off the statistical properties of the uni-variate analysis .

---

### Chi Squared
Chi-squared test is a statistical test used to determine the association between categorical features and the target variable. It measures the independence between variables and is often used in feature selection for categorical data.

---

### Fisher Score
Fisher score, also known as Fisher discriminant analysis or Fisher's linear discriminant, is a method used for feature selection in classification problems. It evaluates the discriminative power of each feature by comparing the between-class variance to the within-class variance.

---

### Mutual Information
Mutual information is a measure of the mutual dependence between two variables. It quantifies the amount of information obtained about one variable by observing another variable. Mutual information is commonly used in feature selection to identify relevant features for prediction tasks.


## **Evaluation metrics**

### Regression MSE (Mean Squared Error)

The Mean Squared Error (MSE) is a crucial metric for assessing the accuracy of regression models. It calculates the average squared difference between predicted and actual values. Lower MSE values indicate more accurate predictions, which are essential for making informed trading decisions.

---

### Regression R2 (R-squared)

R-squared (R2) is a statistical measure indicating how well the regression model fits the data. It quantifies the proportion of the variance in the dependent variable explained by the independent variables. A higher R2 value signifies a better fit, helping traders understand the predictive power of their models.

---

### Classifier Train Accuracy

Train accuracy measures the performance of classifiers on the training dataset. It indicates the proportion of correctly classified instances out of the total training data. Understanding train accuracy helps traders assess how well their models learn from historical data.

---

### Classifier Test Accuracy

Test accuracy evaluates the performance of classifiers on unseen data, typically a test dataset. It measures the proportion of correctly classified instances out of the total test data. Test accuracy provides insights into how well the model generalizes to real-world scenarios, aiding traders in assessing its reliability.

---

### Classifier TP / TN / FP / FN

True Positive (TP), True Negative (TN), False Positive (FP), and False Negative (FN) are fundamental metrics for binary classification models. These metrics quantify the accuracy of predicting positive and negative outcomes. Understanding these metrics is essential for traders to evaluate the effectiveness of their buy/sell signals and risk management strategies.

---

## Pitfalls & Solutions
- **Experiment**: Experiment with different models, hyperparameters, and feature selection methods to find the best combination for your dataset. Each model has its strengths and weaknesses, and what works well for one dataset may not work as effectively for another. 
- **Over-Fitting**: Overfitting occurs when a model learns the training data too well or generalised pattern that only works in test sub-set. This can lead to poor performance on unseen data. To avoid overfitting, keep an eye on the models performance outputs if train accuracy is 1.0 this is a sign of overfitting, other signs could be train accuracy being extremely high for example 99.99% however test accuracy is vastly degraded with value of let say 60.99%.
- **Over-Complicated**: Generally by increasing amount of features being used, the complexity of the model increases. Each model performs differently to how many features are being fed into it and finding the sweet spot is key to a successful model. Too many features can lead to overfitting and poor generalization, while too few features may result in underfitting and low predictive power.
- **Data Quantity**: Depending on your selected date ranges and time frames, the amount of data you have available to train your model can have a significant impact on its performance. It is recommended to have a sufficient amount of data to train your model effectively. Having too much or too little data can lead to suboptimal results.
- **Labels**: Once a backtest is conducted you're able to see support scores for the provided labels, if a great imbalance between the labels this can lead to poor performance. Selecting different labelling methods can help to improve the performance of the model. Using different class balancing methods can also help to improve the performance of the model.
- **Take Profit and Stop Loss**: Ensure that the take profit and stop loss values are set correctly or adjusted as required. You can have a good model but if these parameters are not set correctly, it can lead to poor performance.
- **External Factors**: By reviewing backtest results, you can further refine your model by accounting for its weaknesses and adding additional logic to the backtest to improve the logic such as adding additional filters or conditions to the strategy that aim to prevent it executing in conditions you know model performs poorly within.
