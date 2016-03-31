# NPM 2.x Shrinkwrap Reduced Test Case

This shows how local modules are broken when shrinkwrapping in npm `2.x`.  I tested specifically with `2.15.1`.

To see the error, run `make`.  The npm-shrinkwrap inside `apps/app1` does not have the resolved key and so the structure as it is laid out here breaks.
