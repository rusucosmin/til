# Week3 - Logistic Regression

- Classification and Representation
- Regularization


## Classification and Representation

### Classificaion
- Examples:
	- Email: Spam / Not Spam?
	- Online Transaction: Fraudulent: Yes / No?
	- Tumor: Malignant / Benign
- (Binary) Classification problems
	- y in `{0, 1}`
	- `0` - Negative Class
	- `1` - Positive Class

- Multiclass classification problems
	- y belongs to a finite set

- Logistic Regression algorithm
	- Classification algorithm
	- `0 <= h_theta(x) <= 1`

### Hypthotesis Representation
	
- Goal:
	- `0 <= h_theta(x) <= 1`
	- Let h_theta(x) = g(theta' * x) (theta' = transpose of theta)
	- `g(z) = 1 / (1 + e^(-z))`
	- `g` - Sigmoid function or Logistic function
	- => `h_theta(x) = 1 / (1 + e ^ -(theta' * x))`

- Interpretation of Hypothesis Output
	- `h_theta(x) = estimated probability that y = 1 on input x`
	- Example:
		`x = [x0 x1] = [1 tumorSize]`
		`h_theta = 0.7` => Tell patient that 70% change of tumor being malignant
	- `h_theta(x) = p(y = 1 | x ; theta)`
		- "probability that y = 1, given x, parameterized by theta"

### Decision Boundary

- For the Sigmoid function we get that:
	- `for every x >= 0, h_theta(x) >= 0.5`
	- `for every x < 0, h+theta(x) < 0.5`
- Therefore, in order to predict if `y is 1`, we have to check if `theta' * x >= 0`
- Non-linear decision boundaries:
	- `h_theta(x)  = g(theta0 + theta1 * x1 + theta2 + x2 + theta3 + x1^2 + theta4 * x2^2)`
		- In this example the decision boundary is a circle
	- For higher order polynomials we can get different complex forms for the decision boundary (like an ellipse or a peanut)


### Cost function and Gradient Descent

- We cannot use the cost function from Linear regression since we will have a non-convex function J(theta) and we cannot converge to the global minimum
- Goal: take a cost function `J(theta)` such that it is convex
- Logistic regression cost function:
	```
	Cost(h_theta(x), y) = {
		-log(h_theta(x)) if y = 1
		-log(1 - h_theta(x)) if y = 0
	}
	```
- `J(theta) = 1 / m * sum(Cost(h_theta(xi), yi))`
- Where `Cost(h_theta(x), y) = -y * log(h_theta(x)) - (1 - y) * log(1 - h_theta(x))` (since y is either 1 or 0)
- Want min_theta(J(theta))
- Use `Gradient Descent` algorithm
	- Where the partial derivative is:
		(d / dtheta_j) * J(theta) = 1 / m * sum(h_theta(x_i) - y_i)* xj_i
	- Which is exactly like linear regression!
	- Is it the same algorithm?
	- The only difference is the definition of `h_theta` function
		- For linear regression: `h_theta(x) = Theta' * x`
		- For logistic regression: `h_theta(x) = 1 / (1 + e^(-theta' * x))`

### Advanced Optimization

- Given theta, if we have code that can compute
	- J(theta)
	- d / (d * theta_j) * J(theta) for j = 0..n

- Optimization algorithms:
	- Gradient descent
	- Conjugate gradient
	- BFGS
	- L-BFGS
	- For the last three:
		- Advantages:
			- No need to manually pick `alpha`
			- Often faster than gradient descent
		- Disadvantages
			- More complex

###Multiple Classification:
- One vs all (One vs any)
- Basically we will have `theta_i` functions
- Now, we just have to take the maximum among all of them.
- Just consider one fixed value for y (from 1 to k) and the rest of values consider to be 'negative'.
- So, now we actually have a simple 0/1 classifcation.
