Testing makeSVG
========================================================

This is an R markdown document that tests the 'makeSVG.R' function for several kinds of plots.


```
## Error: cannot change working directory
```

<p>A quick look at the head of the data...</p><table ><tr><td>y</td><td>x</td><td>gp1</td><td>gp2</td><td>id</td></tr><tr><td>-0.946720559255072</td><td>-0.133150964328944</td><td>1</td><td>a</td><td>1</td></tr><tr><td>-1.27335391978623</td><td>-1.75652739555764</td><td>1</td><td>a</td><td>2</td></tr><tr><td>-0.168031392925371</td><td>-0.388779864071743</td><td>1</td><td>a</td><td>3</td></tr><tr><td>-3.47849757728169</td><td>0.0892072230732945</td><td>1</td><td>a</td><td>4</td></tr><tr><td>1.76242068173173</td><td>0.845013004067436</td><td>1</td><td>a</td><td>5</td></tr><tr><td>2.57558527887169</td><td>0.962527968484271</td><td>1</td><td>a</td><td>6</td></tr></table> 
<p>A simple xy plot.</p><div align='center'>
<embed src="simple_xy_plot.svg" width=300 height=300 type="image/svg+xml" />
</div>
<p>An xy plot, with panels.</p><div align='center'>
<embed src="xy_plot_with_panels.svg" width=300 height=300 type="image/svg+xml" />
</div>
<p>An xy plot with panels + grouping.</p><div align='center'>
<embed src="xy_plot_with_panels_and_groups.svg" width=300 height=300 type="image/svg+xml" />
</div>
<p>An xy plot with panels + grouping, and custom colors for groups.</p><div align='center'>
<embed src="xy_plot_with_panels_and_groups_color.svg" width=300 height=300 type="image/svg+xml" />
</div>
<p>An xy plot with panels + grouping, and custom colors for groups, and smoothers.</p><div align='center'>
<embed src="xy_plot_with_panels_and_groups_color_loess.svg" width=300 height=300 type="image/svg+xml" />
</div>
<p>A dotplot. Note that in order to get the fill on highlight, it is necessary to specify a 'hollow' pch.</p><div align='center'>
<embed src="dotplot.svg" width=300 height=300 type="image/svg+xml" />
</div>
<p>dotplot with extra panels</p><div align='center'>
<embed src="dotplot_with_panels.svg" width=300 height=300 type="image/svg+xml" />
</div>
<p>boxplot with panels</p><div align='center'>
<embed src="bwplot_with_panels.svg" width=300 height=300 type="image/svg+xml" />
</div>

