# AI Models Node Guide

The **AI Models Node** is the central hub for training and evaluating machine learning models within your trading strategy pipeline. It allows you to train classification or regression models, optimize their parameters, and create hybrid strategies by combining multiple models.

---

## Purpose of the AI Models Node
The AI Model node acts as a **strategy factory**. It enables:
- Training of machine learning models (classification or regression)
- Manual or automated hyperparameter tuning
- Feature selection and optimization
- Experimentation with label construction methods
- Creating multiple models to test and compare
- Forming hybrid strategies from multiple models

---

## Workflow Overview
After training a model, it should always be evaluated on unseen data. This helps determine how well it generalizes and provides an indication of when retraining is required.

![Workflow]( /data_nodes/images/workflow%20example.png )

---

## Key Configuration Options

### Model Name
- Assign a unique name to your model.
- Used to save or load models.
- Retraining with the same name will overwrite the existing model.

### Model Selection
Models are categorized by task type:

- **Classifiers**: Predict directional market movement or events.
- **Regressors**: Predict numerical values such as future prices.
- Neural networks (planned for future release).

### Train Switch
- If enabled, trains a new model.
- If disabled and the model name exists, loads the pre-trained model.
- If not ticked and no model exists, the node will train a new model.

### Manual Tuning
- Enables manual setting of model hyperparameters.
- If disabled, the system uses automated optimization algorithms.

---

## Advanced Controls

### Normalize Data
- Scales input features to a standard range.
- Improves performance of distance-based models such as SVM.

### Custom Trainer (Experimental)
- Trains models using **risk-adjusted performance metrics** instead of traditional ML metrics.
- Optimizes on metrics such as **Sortino ratio** rather than AUC or accuracy.
- Useful when the priority is profitability and risk management in trading contexts.

### Meta Model
- Creates a meta-model by combining multiple base models.
- Can function as an ensemble, smoothing predictions or applying weighted voting schemes.

---

## Label Configuration

### Attempt Label Optimization
- Automatically searches for the most effective label configuration.
- Samples combinations of upper, lower, and vertical barriers.
- Selects the label set that provides the most robust class balance.

### Filter Labels
- Filters labels based on user-defined profitability thresholds.
- Allows configuration of **upper and lower barrier percentages**.
- Labels not meeting the criteria are removed from training.
- Reduces noise but may also reduce sample size significantly.

### Periods Between Labels
- Controls spacing between labels.
- Influences the model’s ability to detect short- or long-term patterns.

### Labelling Methods
The current release supports:

- **Triple Barrier**: Labels are generated from defined stop-loss, take-profit, and time-based barriers.
- **Generic**: Labels are created based on a simple threshold of price movement.
- **AI Inference(Experimental)**: Uses AI-generated labels.

Additional paradigms (Peaks & Troughs, Scalper, Swing, Volatility, Trend, Structural, STD) are planned for future release.

#### Triple Barrier Parameters
- **Upper Barrier %**: Percentage move required to trigger a profit label.  
- **Lower Barrier %**: Percentage move required to trigger a loss label.  
- **Vertical Barrier Periods**: Maximum number of periods before the trade is force-closed.  

#### Generic Parameters
- **Threshold**: Percentage move required to trigger a profit label.  
- **Future Periods**: How many future periods to consider for label assignment. 

#### AI Inference Parameters
- **Threshold**: Percentage move required to trigger a profit label.  
- **N Clusters**: Number of clusters for AI-generated labels.
- **Future Periods**: How many future periods to consider for label assignment.

#### Random Parameters
- **N/A**: Random labels are generated without specific parameters.

---

## Feature Engineering & Selection

### Feature Divisor
- Controls how many features are retained relative to the number of positive labels.  
- Formula:  
Number of Features = Positive Labels / Feature Divisor
- Prevents overfitting by ensuring feature count scales appropriately with available samples.

### Manual Feature Sets
- When enabled, provides checkboxes for selecting specific feature categories.  
- By default, the model trains with **all feature sets**.  
- Useful for testing performance across particular feature families (e.g. momentum-only, volatility-only).

### Feature Selection Methods
Available methods include:
- Mutual Information
- Pearson Correlation
- Spearman Correlation
- Granger Causality

---

## Class Balancing

### Options
- **Class Weights**: Assigns weights inversely proportional to class frequency.  
- **Undersampling**: Reduces the majority class to match the size of the minority class.  

### Guidance
- Use **class weights** for most time-series applications to preserve data order.  
- Undersampling may distort historical context and is best used sparingly.  

---

## Validation & Evaluation

### Validation Methods
Currently supported:
- **Purged K-Fold**: Prevents data leakage by purging overlapping samples between folds.

Planned additions:
- **TimeSeries Split**
- **Walk-Forward Validation**

### Evaluation Data Handler
Currently supported:
- **Sliding Window**: Preserves chronological order.

Planned additions:
- Resample Data
- Chunk Selection

---

## Evaluation Metrics

### For Classifiers
- **AUC Train Score**: Area under the ROC curve (training data).  
- **AUC Out-of-Sample**: ROC AUC score on unseen data.  

### For Regressors
- **MSE (Mean Squared Error)**: Lower is better.  
- **R-squared**: Proportion of variance explained. Higher is better.  

### For Custom Trainer
- **Sortino Ratio**: Downside-risk-adjusted return. Optimizes risk-weighted profitability.  

---

## Best Practices and Pitfalls

| Issue | Guidance |
|-------|----------|
| Overfitting | Monitor train vs. test scores. Avoid 100% train accuracy. |
| Too many features | Use feature divisor and manual feature sets. |
| Too little data | Expand historical window or use higher timeframe. |
| Label imbalance | Apply class weights rather than undersampling. |
| Barrier settings | Choose parameters carefully. Too narrow → noise; too wide → rare signals. |

---

## Pro Tips
- Train multiple models using different labelling methods and compare their robustness.  
- Use the Custom Trainer when evaluating live deployment scenarios where risk-adjusted returns matter more than accuracy.  
- Use Feature Divisor to safeguard against overfitting when sample size is small.  
- Always validate on unseen data using Purged K-Fold or Sliding Window before live deployment.