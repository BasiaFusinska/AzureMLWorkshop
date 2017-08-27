# Model
# Input: dataset
# Output: model

model <- lm(prestige ~ ., dataset)

# Scorer
# Input: model, dataset
# Output: scores

probabilities <- predict(model, dataset)
scores <- data.frame("Predicted"=probabilities)

# Model evaluation
dataset1 <- maml.mapInputPort(1)

countMSE <- mean((dataset1$prestige-dataset1["Predicted"])^2)
evaluation <- data.frame(countMSE)

# Output evaluation
maml.mapOutputPort("evaluation");
