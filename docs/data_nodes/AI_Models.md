# AI Models Node Guide

The **AI Models Node** is the central hub for training and evaluating machine learning models within your trading strategy pipeline. It allows you to train classification or regression models, optimize their parameters, and create hybrid strategies by combining multiple models.

---

## 🧱 Purpose of the AI Models Node
Think of the AI Model node as a **strategy factory**. It enables:
- Training of machine learning models (classification or regression)
- Manual or automated hyperparameter tuning
- Feature selection and optimization
- Creating multiple models to test and compare
- Forming hybrid strategies from multiple models

---

## 🔄 Workflow Overview
After training a model, it's essential to test it on unseen data. This helps determine how well it generalizes and when to retrain.

![Workflow]( /data_nodes/images/workflow%20example.png )

---

## 🔢 Key Configuration Options

### **Model Name**
- Assign a name to your model.
- Used to save/load models from your account.
- Re-training a model with the same name will overwrite it.

### **Model Selection**
Models are categorized by task type:

- **Classifiers**: Predict directional market movement or events.
- **Regressors**: Predict numerical values like future price.
- Neural Networks (Coming Soon)

### **Train Switch**
- If enabled, trains a new model.
- If disabled and the model name exists, loads the pre-trained model.

### **Manual Tuning**
- Enables manual setting of model hyperparameters.
- If left off, the system auto-tunes parameters using optimization algorithms.

---

## 🚀 Advanced Controls

### **Normalize Data**
- Scales input features to a standard range.
- Improves performance of distance-based models (e.g. KNN, SVM).

### **Validation Methods**
Used to evaluate model generalization:
- **TimeSeries Split**: Maintains chronological order.
- **Purged K-Fold**: Prevents leakage by purging data between folds.
- **Walk-Forward**: Simulates live trading evaluation.

### **Evaluation Data Handler**
- **Sliding Window**: Uses data in time order.
- **Resample Data**: Randomly shuffles before splitting.
- **Chunk Selection**: Breaks data into discrete chunks.

### **Enforce TA Regimes (Disabled)**
- Uses fixed technical indicator sets (RSI, VWAP, ATR, SMA, MACD).

### **Enforce Market Regimes (Disabled)**
- Teaches model behavior across different market regimes (trending, ranging, volatile).

---

## 📊 Feature Engineering & Selection

### **Feature Selection Methods**
- **Pearson Correlation (Abs/Inv)**: Ranks by correlation to target.
- **Recursive Feature Elimination (RFE)**: Iteratively removes least important features.
- **Univariate**: Statistical strength of individual features.
- **Chi-Squared**: Useful for categorical data.
- **Fisher Score**: Ratio of between-class to within-class variance.
- **Mutual Information**: Captures shared information between features and target.

### **Feature Optimizer**
- **Bayesian Optimization**: Efficient search for best feature subset.
- **Recursive Feature Elimination**: Refines feature importance step-by-step.

### **Feature Count**
- Sets number of features used for training.
- Set to 0 for automatic heuristic selection.

---

## 🌍 Label Configuration

### **Periods Between Labels**
- Determines spacing between labels.
- Affects model's ability to detect long/short-term patterns.

### **Labelling Methods**
Choose a label generator to define the target (Y variable):

1. **Triple Barrier**: Risk-defined labels using stop-loss/take-profit levels.
2. **Generic**: Forward-looking label with fixed 1:1 risk/reward.
3. **AI Inference**: Learns turning points based on price structure.
4. **Peaks and Troughs**: Simple turning point detection.
5. **Scalper Paradigm**: High-frequency inflection labeling.
6. **Swinging Paradigm**: Mid-term trend turning points.
7. **Volatility Paradigm**: Based on price fluctuation regimes.
8. **Trend Paradigm**: Labels based on trend persistence.
9. **Structural Paradigm**: Detects structural shifts in price.
10. **STD Paradigm**: Labels based on standard deviation signals.

---

## 🔒 Filters & Risk Constraints

### **Filter TP % (Take Profit)**
- Filters out trades below a specified profit threshold.

### **Filter SL % (Stop Loss)**
- Filters out trades with excessive drawdown risk.

### **Filter Window**
- Window size used to evaluate SL/TP filters over multiple trades.

---

## ⚖️ Class Balancing Options
- **Undersampling**: Reduces majority class samples.
- **Class Weights**: Weighs samples by inverse frequency.
- (Temporal SMOTE coming soon)

*Note*: Be cautious using class balancing in time series — it may distort temporal integrity.

---

## 📈 Fitness Regime
Selects feature screening technique before modeling:
- **PCA**: Principal Component Analysis to reduce dimensionality.
- **Agglomeration**: Clustering-based feature aggregation.

---

## 📈 Evaluation Metrics

### For Classifiers:
- **AUC Train Score**: Area under ROC curve (training data).
- **AUC Out-of-Sample**: Area under ROC curve (unseen data).

### For Regressors:
- **MSE**: Mean Squared Error, lower is better.
- **R-squared**: Proportion of variance explained, higher is better.

---

## ⚠️ Common Pitfalls & Best Practices

| Issue | Solution |
|------|----------|
| **Overfitting** | Monitor train vs test accuracy. Avoid 100% train accuracy. |
| **Too Many Features** | Use feature selection + optimization. Simplify model. |
| **Too Little Data** | Expand historical window or use higher timeframes. |
| **Label Imbalance** | Change labelling method or apply class balancing. |
| **Wrong SL/TP** | Tune SL/TP filters and validate outcomes. |
| **Poor Generalization** | Use proper validation (walk-forward, purged K-fold). |

---

## 🔍 Model Choices

### Classification Models
- [Random Forest](https://scikit-learn.org/stable/modules/generated/sklearn.ensemble.RandomForestClassifier.html)
- [XGBoost](https://scikit-learn.org/stable/modules/generated/sklearn.ensemble.GradientBoostingClassifier.html)
- [Support Vector Classifier](https://scikit-learn.org/stable/modules/generated/sklearn.svm.SVC.html)
- [K-Nearest Neighbors](https://scikit-learn.org/stable/modules/generated/sklearn.neighbors.KNeighborsClassifier.html)
- [AdaBoost](https://scikit-learn.org/stable/modules/generated/sklearn.ensemble.AdaBoostClassifier.html)
- [CatBoost](https://catboost.ai/en/docs/concepts/python-reference_catboostclassifier)

### Regression Models
- [Support Vector Regression (SVR)](https://scikit-learn.org/stable/modules/generated/sklearn.svm.SVR.html)
- [Random Forest Regression](https://scikit-learn.org/stable/modules/generated/sklearn.ensemble.RandomForestRegressor.html)
- [XGBoost Regression](https://scikit-learn.org/stable/modules/generated/sklearn.ensemble.GradientBoostingRegressor.html)

---

## 💪 Pro Tip
> Train multiple models using different labelling methods and validation techniques. Compare performance and select the most robust candidates for live deployment.
