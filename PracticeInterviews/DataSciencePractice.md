Here I want to document what I learnt about the model evaluation metrics for machine learning.

Evaluating a model is a core part of building an effective machine learning model. We have several model evaluation metrics like confusion matrix, cross-validation, AUC-ROC curve.

The idea of building machine learning models works on a constructive feedback principle, where you build a model, get feedback from the model, make improvements and continue until you achieve a desirable accuracy.

Evaluation metrics helps explain the performance of a model. It is an incorrect approach to hurriedly map predicted values on unseen data. We need to check the model and confirm its robustness.

We have 2 main types of predictive models, the regression models that have continuous output or a classification models (nominal or binary output). In classification type problem, we use two types of algorithms.

- Class output: SVM and KNN create a class output e.g for binary classification problem, the outputs will be weither 0 or 1.

- Probability output: Algorithms like Logistic Regression, Gradient Boosting, Adaboost give probability output. To convert probability outputs to class output is just a matter of creating a threshold probability.

1. Confusion matrix is an N * N matrix, where N is the numnber of classes being predicted. 

* Accuracy is the proportion of the total number of predictions that were correct.

* Precision/ positive predicted value is the proportion of positive cases that were correctly identified.

* Negatively predicted value: the proportion of negative cases that were correctly identified.

* Sensitivity/ Recall is the proportion of actual positive cases which were correctly identified.

* Specificity: The proportion of actual negative cases which are correctly identified.

2. F1 Score: If we are trying to get the best precision and recall at the same time, we use F1-Score, this is the harmonic mean of precision and recall values for a classification problem.

<img src = "https://i.stack.imgur.com/U0hjG.png">

We may be wondering why Harmonic mean and not Arithmetic mean,this is because HM punishes extreme values more.

Fbeta measures the effectiveness of a model with respect to a user who attaches β times as much importance to recall as precision.

3. Gain and Lift charts