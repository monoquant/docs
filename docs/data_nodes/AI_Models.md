### What is the `AI Models` Node?  
- The AI Models node is where you can train and test your AI models to improve the performance of your trading strategies.
- You can select from a range of classification and regression models to predict the outcome of trades based on historical data.
- The AI Models node allows you to fine-tune the parameters of each model by ticking `Advanced`
- You also have the ability to let the model perform hyperparameter optimization to find the best parameters for your dataset, by not ticking `Advanced`

<img src="/data_nodes/images/ai_model_labeled.png" />     

## **How to use the AI Models node**
The AI models card consists of 8 constant features that will and each model has its own subset of parameters you can tune. 

### AI Model Name
You use this to set the name of your AI model, this is also used to load a model that has been previously trained

### Model Selection
Here you will find all the models/algorithims that are avaliable to use on our platform. Models are broken down into 3 groups: 

- Classifiers
- Regressors
- Neural Networks

### Train Switch
This determines wether the model will be trained on this iteration or not

!!! info "Regarding Naming"
    If you have an already trained model, with the same name, re-training will overwrite previous trained model with that name.

### Class balancing
This allows you to select which class balancing methods you would like to use. The ones available are:

1. SMOTE (Synthetic Minority Over-sampling Technique): SMOTE is a popular oversampling technique used to address class imbalance. It works by creating synthetic samples from the minority class rather than replicating them. This is done by selecting similar instances (neighbors) and creating new examples along the line segments connecting these instances in the feature space. By generating synthetic examples, SMOTE aims to balance the class distribution without introducing exact duplicates of existing minority class samples.
2. ADASYN (Adaptive Synthetic Sampling): ADASYN is an extension of the SMOTE technique that adapts the generation of synthetic samples according to the density of minority class instances. It focuses more on generating samples in regions of the feature space where the density of minority instances is low. By doing so, ADASYN aims to alleviate the problem of overfitting that may occur with SMOTE in regions of high minority class density.
3. Undersampling: Undersampling involves reducing the number of instances in the majority class to balance its distribution with the minority class. This can be achieved by randomly removing instances from the majority class until the desired balance is achieved. While undersampling is a straightforward approach, it may lead to loss of information since it discards potentially valuable data from the majority class.
4. Oversampling: Oversampling involves increasing the number of instances in the minority class to balance its distribution with the majority class. This can be done by replicating existing instances, generating synthetic samples (as in SMOTE and ADASYN), or other techniques. Oversampling aims to ensure that the classifier is exposed to a sufficient number of minority class examples during training, thereby improving its ability to generalize.

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

### Label Filters
weather you want to filter labels that were only

### Labelling method 
Allows you to select the labelling method the model will use as the Y predictor.

Here are the current labelling methods that are available to use on the AI models card - Triple Barrier Generates training label signals based on the triple barrier method. The user can specify the barrier width and the period over which the barrier is calculated.

1. `Signficant Change` Generates training label signals based on the percentage change in price over a given period. The user can specify the percentage change threshold and the period over which the change is calculated.
2. `PCT Change Matrix` Generates training label signals based on a matrix of percentage changes in price over a given period. The user can specify the period over which the changes are calculated.
3. `Mean Reversion` Generates training labels signals based off bolinger bands. The user can specify the period over which the bands are calculated.
4. `Future Price` Generates training label signals based off the future price of the asset
5. `Generic` Generates training label signals based off the future outcome similar to triple barrier but with more flexibility
6. `AI Candles Cluster` Generates training label signals based off unsupervised clustering of candlestick patterns. The user can specify the number of clusters and the period over which the clusters are calculated.
7. `AI Cluster` Generates training label signals based off unsupervised clustering of OHLCV data and other metrics. The user can specify the number of clusters and the period over which the clusters are calculated.

### Feature Selection 
Contains options of the feature selection methods for best aligning with your Y predictor

### Feature Count
The number of features you want to use 

## **Available Models**
To view parameter explanation please click on the model to view its documentation on the scikit-learn platform.


### Classification models

- [Random forest](https://scikit-learn.org/stable/modules/generated/sklearn.ensemble.RandomForestClassifier.html)
- [XGBOOST Gradient Boosting](https://scikit-learn.org/stable/modules/generated/sklearn.ensemble.GradientBoostingClassifier.html)
- [Support vector Classification](https://scikit-learn.org/stable/modules/generated/sklearn.svm.SVC.html)
- [K-nearest neighbours](https://scikit-learn.org/stable/modules/generated/sklearn.neighbors.KNeighborsClassifier.html)
- [Adaboost](https://scikit-learn.org/stable/modules/generated/sklearn.ensemble.AdaBoostClassifier.html)
- [Catboost](https://catboost.ai/en/docs/concepts/python-reference_catboostclassifier)
- [LSTM](https://www.tensorflow.org/api_docs/python/tf/keras/layers/LSTM)

### Regression Models
- [Support vector regression](https://scikit-learn.org/stable/modules/generated/sklearn.svm.SVR.html)
- [Random forest regression](https://scikit-learn.org/stable/modules/generated/sklearn.ensemble.RandomForestRegressor.html)
- [XGBoost regression](https://scikit-learn.org/stable/modules/generated/sklearn.ensemble.GradientBoostingRegressor.html)

## **Feature Selection**

### Correlation
Correlation-based feature selection involves measuring the correlation between each feature and the target variable. Features with low correlation or no correlation with the target variable are considered less important and can be removed from the dataset.

---

### Variance Threshold
  Variance thresholding is a simple unsupervised feature selection method that removes features with low variance. Features with low variance are generally less informative as they don't change much across the dataset and are often removed to reduce dimensionality.

---

### Recursive Feature Elimination
  Recursive feature elimination (RFE) is a wrapper method that recursively removes features and builds a model to evaluate the performance at each step. It ranks features based on their importance and eliminates the least important features until the desired number of features is reached.

---

### Univariate Feature Selection
Univariate feature selection evaluates each feature individually based on statistical tests to determine its importance. Common methods include SelectKBest and SelectPercentile, which select the top k or a percentage of features, respectively, based on their scores.

---

### Information Gain
Information gain is a feature selection method commonly used in decision trees and ensemble learning algorithms. It measures the reduction in entropy or disorder of the target variable when a feature is included. Features with higher information gain are considered more important and retained.

---

### Chi Squared
Chi-squared test is a statistical test used to determine the association between categorical features and the target variable. It measures the independence between variables and is often used in feature selection for categorical data.

---

### Fisher Score
Fisher score, also known as Fisher discriminant analysis or Fisher's linear discriminant, is a method used for feature selection in classification problems. It evaluates the discriminative power of each feature by comparing the between-class variance to the within-class variance.

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