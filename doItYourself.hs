doItYourself = f . g . h
f = logBase 2
g = (^3)
h = max 42

doIt x = f (g (h (x)))
test  = logBase 2.0 . (^3) . max 42
