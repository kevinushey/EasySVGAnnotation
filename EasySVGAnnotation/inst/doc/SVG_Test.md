Testing makeSVG
========================================================

This is an R markdown document that tests the 'makeSVG.R' function for several kinds of plots.


```r
library("Kmisc")
```

```
## Loading required package: Rcpp
```

```
## Loading required package: lattice
```

```r
library("EasySVGAnnotation")
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

```r
attachHTML()
set.seed(123)
kDat <- data.frame(
  y = rt(100, 2),
  x = rnorm(100),
  gp1 = as.factor( rep(1:4, each=25) ),
  gp2 = as.factor( rep( letters[1:2], each=50 ) ),
  id=1:100
)

p("A quick look at the head of the data...")
```

<p>A quick look at the head of the data...</p>

```r
makeHTMLTable( head( kDat ), use.col.names=TRUE )
```

<table ><tr><td>y</td><td>x</td><td>gp1</td><td>gp2</td><td>id</td></tr><tr><td>-0.946720559255072</td><td>-0.133150964328944</td><td>1</td><td>a</td><td>1</td></tr><tr><td>-1.27335391978623</td><td>-1.75652739555764</td><td>1</td><td>a</td><td>2</td></tr><tr><td>-0.168031392925371</td><td>-0.388779864071743</td><td>1</td><td>a</td><td>3</td></tr><tr><td>-3.47849757728169</td><td>0.0892072230732945</td><td>1</td><td>a</td><td>4</td></tr><tr><td>1.76242068173173</td><td>0.845013004067436</td><td>1</td><td>a</td><td>5</td></tr><tr><td>2.57558527887169</td><td>0.962527968484271</td><td>1</td><td>a</td><td>6</td></tr></table> 

```r

p("A simple xy plot.")
```

<p>A simple xy plot.</p>

```r
kPlot <- xyplot( y ~ x, kDat )
makeSVG( kPlot, kDat, outFile="simple_xy_plot.svg" )
Kmisc:::kSvg( "simple_xy_plot.svg", width=300, height=300 )
```

<div align='center'>
<embed src="simple_xy_plot.svg" width=300 height=300 type="image/svg+xml" />
</div>

```r

p("An xy plot, with panels.")
```

<p>An xy plot, with panels.</p>

```r
kPlot <- xyplot( y ~ x | gp1, kDat )
makeSVG( kPlot, kDat, outFile="xy_plot_with_panels.svg" )
Kmisc:::kSvg( "xy_plot_with_panels.svg", width=300, height=300 )
```

<div align='center'>
<embed src="xy_plot_with_panels.svg" width=300 height=300 type="image/svg+xml" />
</div>

```r

p("An xy plot with panels + grouping.")
```

<p>An xy plot with panels + grouping.</p>

```r
kPlot <- xyplot( y ~ x | gp1, kDat,
                 groups=gp2,
                 auto.key=TRUE
                 )
makeSVG( kPlot, kDat, outFile="xy_plot_with_panels_and_groups.svg" )
Kmisc:::kSvg( "xy_plot_with_panels_and_groups.svg", width=300, height=300 )
```

<div align='center'>
<embed src="xy_plot_with_panels_and_groups.svg" width=300 height=300 type="image/svg+xml" />
</div>

```r

p("An xy plot with panels + grouping, and custom colors for groups.")
```

<p>An xy plot with panels + grouping, and custom colors for groups.</p>

```r
kPlot <- xyplot( y ~ x | gp1, kDat,
                 groups=gp2,
                 col=c("orange","turquoise"),
                 auto.key=TRUE,
                 main="Testing!",
                 xlab="xFoo",
                 ylab="yBar"
                 )
makeSVG( kPlot, kDat, outFile="xy_plot_with_panels_and_groups_color.svg" )
Kmisc:::kSvg( "xy_plot_with_panels_and_groups_color.svg", width=300, height=300 )
```

<div align='center'>
<embed src="xy_plot_with_panels_and_groups_color.svg" width=300 height=300 type="image/svg+xml" />
</div>

```r

p("An xy plot with panels + grouping, and custom colors for groups, and smoothers.")
```

<p>An xy plot with panels + grouping, and custom colors for groups, and smoothers.</p>

```r
kPlot <- xyplot( y ~ x | gp1, kDat,
                 groups=gp2,
                 col=c("orange","turquoise"),
                 auto.key=TRUE,
                 panel = function(x, y, ...) {
                   panel.xyplot(x, y, ...)
                   panel.loess(x, y, col="red")
                 },
                 main="Testing!",
                 xlab="xFoo",
                 ylab="yBar"
                 )
makeSVG( kPlot, kDat, outFile="xy_plot_with_panels_and_groups_color_loess.svg" )
Kmisc:::kSvg( "xy_plot_with_panels_and_groups_color_loess.svg", width=300, height=300 )
```

<div align='center'>
<embed src="xy_plot_with_panels_and_groups_color_loess.svg" width=300 height=300 type="image/svg+xml" />
</div>

```r

p("A dotplot. Note that in order to get the fill on highlight, it is necessary to specify a 'hollow' pch.")
```

<p>A dotplot. Note that in order to get the fill on highlight, it is necessary to specify a 'hollow' pch.</p>

```r

kPlot <- dotplot( y ~ gp1, kDat, par.settings=list(
  dot.symbol=list( pch=1 )
  ) )
makeSVG( kPlot, kDat, outFile="dotplot.svg" )
Kmisc:::kSvg( "dotplot.svg", width=300, height=300 )
```

<div align='center'>
<embed src="dotplot.svg" width=300 height=300 type="image/svg+xml" />
</div>

```r

p("dotplot with extra panels")
```

<p>dotplot with extra panels</p>

```r
kPlot <- dotplot( y ~ gp1 | gp2, kDat,
                  par.settings=list(
                    dot.symbol=list( pch=1 )
                    )
                  )
makeSVG( kPlot, kDat, outFile="dotplot_with_panels.svg" )
Kmisc:::kSvg( "dotplot_with_panels.svg", width=300, height=300 )
```

<div align='center'>
<embed src="dotplot_with_panels.svg" width=300 height=300 type="image/svg+xml" />
</div>

```r

p("boxplot with panels")
```

<p>boxplot with panels</p>

```r
kPlot <- SVG.bwplot( y ~ gp1 | gp2, kDat )
makeSVG( kPlot, kDat, outFile="bwplot_with_panels.svg" )
Kmisc:::kSvg( "bwplot_with_panels.svg", width=300, height=300 )
```

<div align='center'>
<embed src="bwplot_with_panels.svg" width=300 height=300 type="image/svg+xml" />
</div>

```r

```

