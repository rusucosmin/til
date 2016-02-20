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


