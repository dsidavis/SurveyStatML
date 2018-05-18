ROC
 as false positives increase to 1, we are saying everything is positive.
 So we better be getting the true positives also.


 With false positives being very low, we are not classifying many positives at all.
 So we may miss some true positives.
 As we allow more false positives, we will get more true positives.
 We want this to rise very fast.
  Allowing some false positives will lead to a lot more true positives.


Start with a threshold for the score statistic
 S(x)  > threshold =>  1 (disease, spam, ..)
       <= threshold => 0

For each value of threshold, compute
  false positives rate (1 - specificity)
  true positives rate   (sensitivity)

For threshold = 0, everyone disease
  false positive = 1
  sensitivity = 1

Vary threshold, should decrease both FP and TP

Ideal, 0 False positives, 1 true positives for all value of the threshold.



Do this for another Score
  S_1(x) > threshold
  

Note that the range of the threshold not important for plot.
 Still looking at %'s of FP, TP
 
 
