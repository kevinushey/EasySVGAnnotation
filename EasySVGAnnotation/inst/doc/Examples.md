EasySVGAnnotation
=================
  
This document gives a simple example of the usage of `EasySVGAnnotation`.


```r
library(EasySVGAnnotation)
```

```
## Loading required package: SVGAnnotation
```

```
## Loading required package: XML
```

```
## Loading required package: plyr
```

```
## Loading required package: lattice
```

```r
library(lattice)
library(Kmisc)
```

```
## Loading required package: grid
```

```
## Loading required package: Rcpp
```

```r
set.seed(123)
dat <- data.frame(
  y = rt(100, 2),
  x = rep(1:25, each=4),
  gp1 = as.factor( rep(letters[1:4], each=25) ),
  gp2 = as.factor( rep(letters[1:2], each=50 ) )
  )

myPlot <- xyplot( y ~ x | gp1, dat, groups=gp2,
                  auto.key=TRUE,
                  panel = function(x, y, ...) {
                    panel.xyplot(x, y, ...)
                    panel.loess(x, y, col="red", ...)
                  } )
makeSVG( myPlot, dat, outFile="test.svg" )
Kmisc:::kSvg("test.svg", width=300, height=300)
```

<div align='center'>
<embed src="test.svg" width=300 height=300 type="image/svg+xml" />
</div>


Note how, when you highlight each point in the plot, you get a tool-tip popup
of all other variables in the dataframe `dat`.

The functionality works for lattice's `xyplot` and `dotplot`. A custom function,
`SVG.bwplot`, is included for handling of lattice boxplots.


```r
myPlot <- SVG.bwplot( y ~ gp1, dat )
makeSVG( myPlot, dat, outFile="test2.svg")
Kmisc:::kSvg("test2.svg", width=300, height=300)
```

<div align='center'>
<embed src="test2.svg" width=300 height=300 type="image/svg+xml" />
</div>


As the project is very beta, expect there to be bugs. The function has been
fairly well tested for 'typical' plots and arguments.
