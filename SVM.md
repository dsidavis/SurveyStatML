---

# Support Vector Machines


+ Binary classification = $y_i = +1 or -1$

+ Find line/plane separating two groups.

+ Which line?
   + As far apart from each group.
   + Maximal margin
   + Margin is smallest distance to the nearest point(s) in each group.
   
+ Find best line ($\beta_0, \beta_1, ..., \beta_p$)
+ Classify new observation $x_1, ..., x_p$ using
   $$ S(x) = \beta_0 + \beta_1 x_1 + ... + \beta_p x_p $$
   + $> 0$  means $y = +1$
   + $< 0$ means $y = -1$
   

+ The bigger the margin, the more certain we are.
+ The further $S(x)$  is from $0$, the more certain we are.

+ Confidence intervals ???


---

# Mathematical Formulation

1. Maximize M over $$\beta_0, \beta_1, ..., \beta_p$
1. s.t. $\Sigma_i = 1 \beta^2_j = 1$
1. and $y_i(\beta_0 + \beta_1 x_{i1} + ... + \beta_p x{i_p} ) \ge 0$ for each i.


+ 2 - $\Sigma_i = 1 \beta^2_j = 1$ is not really a constraint
   + just allows us to interpret (3) as distance from each point to the to the line/plane.
+ 3 - every point is classified correctly


---

# Minimize but Allow errors


1. Maximize M over $$\beta_0, \beta_1, ..., \beta_p$
1. s.t. $\Sigma_i = 1 \beta^2_j = 1$
1. and $y_i(\beta_0 + \beta_1 x_{i1} + ... + \beta_p x{i_p} ) \ge M(1-\epsilon_i)$ for each i
1. and $\epsilon_i > 0$ and $\Sigma_i^n \epsilon_i \le C$


## Changes

1. $S(X) \ge M(1-\epsilon_i)$
    + So not $\gt 0$, but on the wrong side of the line
    + one or more can be the wrong side of the line, but
	
1. We pay a price for 
   + each one on the wrong side
   + and how far over it is
   
1. Total budget C to allocate to difficult to classify points.


1. $\epsilon_i$ - 3 possibilities
   + 0
   + $0 < \epsilon_i < 1$ - wrong side of line
   + $> 1$ - on the wrong side of the margin
   
   
---

# SVM

+ Less sensitive to outliers (than LDA/QDA)
  + Depends on nearest points to margin, not points far away.
+ No normality assumption



---
# SVM - kernels

+ Optimization problem depends on distances/inner products between observations i and j.
  +  Not directly on the individual X's
  
+ Instead of inner product, generalize to use a kernel.
  + Similarity/distance between two observations.
  
  
+ Support vector machine = support vector classifier + non-linear kernel.

+ Can obtain non-linear, closed region boundaries, 
   + e.g. circuar using  radial kernels.
   
   
---

# SVM Regression

+ Find line/plane.
   + Minimize different loss function
   +  $$\Sigma ( (y - X\beta)^2 - \tau)_+$$  where $(x - \tau)_+$ is 
       + 0 if $x \le \tau$ 
	   + and $(y - X\beta)^2$ otherwise
   + So only the large residuals count
      + the smaller residuals below a threshold count 0.
   

