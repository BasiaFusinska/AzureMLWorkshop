# Map 1-based optional input ports to variables
dataset1 <- maml.mapInputPort(1) # class: data.frame
dataset2 <- maml.mapInputPort(2) # class: data.frame

# Aggregate the classification evaluations operation
evaluations = rbind(dataset1, dataset2)

# Set up algorithms names for the results
evaluations = cbind(data.frame(Algorithm = c("Boosted Decision Tree", "Decision Forest", "Logistic Regression", "Support Vector Machine")), evaluations)

# Select data.frame to be sent to the output Dataset port
maml.mapOutputPort("evaluations")