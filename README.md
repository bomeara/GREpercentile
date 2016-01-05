# GREpercentile
This uses by default the scores from the 2015-2016 GRE test. Note it is NOT sanctioned, authorized, endorsed, or in any way approved by ETS or the GRE: it's a simple utility function I wrote.

To install the package, do

```
devtools::install_github("bomeara/GREpercentile")
```

To use it, just pass your score and your choice of test (```V```, ```Q```, or ```A```) to ```GetPercentile()```. You can use your own score tables.
