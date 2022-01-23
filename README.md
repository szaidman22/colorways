# colorways
colorways local R package

This readme comes from a blogpost found here: https://sofiazaidman.com/?p=723

<!-- wp:paragraph {"textColor":"black"} -->
<p class="has-black-color has-text-color">I set out to create a package with three distinct functionalities:</p>
<!-- /wp:paragraph -->

<!-- wp:list {"ordered":true,"textColor":"black"} -->
<ol class="has-black-color has-text-color"><li>Save my own palettes</li><li>Display any palette (either native or from another package) in a variety of forms (basic palette, charts, graphs)</li><li>Shuffle color palettes if desired and save the newly ordered list of colors</li></ol>
<!-- /wp:list -->

<!-- wp:separator -->
<hr class="wp-block-separator"/>
<!-- /wp:separator -->

<!-- wp:heading -->
<h2>Saving my own palettes</h2>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>This is just as easy as choosing colors and putting them in lists. The fun part of course is naming the palettes based on my own whimsy. Some examples:</p>
<!-- /wp:paragraph -->

<!-- wp:code -->
<pre class="wp-block-code"><code>krampus &lt;- c("#0782A6","#A66507","#994846","#CDD845","#624FAF","#52735D","#BBAE92","#FED2E7","#FFE402")
ballpit &lt;- c("#5C33FF","#FF8E07","#E2E442","#42E44F","#C67CF9","#F64EBC","#ACF64E" ,"#C11736","#00B6A0")
donut &lt;- c("#FA88F1","#2DEC93","#8FE2FF","#FF882B","#D80D0D","#D0A321","#369830","#B681FF","#858585")</code></pre>
<!-- /wp:code -->

<!-- wp:paragraph -->
<p>I decided to go with 9 colors in each palette for uniformity and to maximize novel color combinations when shuffling. I ordered the palettes intentionally with my favorite color combinations come at the beginning, so that when the palettes aren't shuffled, optimal color combinations are preselected. </p>
<!-- /wp:paragraph -->

<!-- wp:separator -->
<hr class="wp-block-separator"/>
<!-- /wp:separator -->

<!-- wp:heading -->
<h2>Paletteprint: view all palettes</h2>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>The first thing I wanted to do was write a function that would display all the palettes at once. To do this, I had to first create a list of palettes and their names:</p>
<!-- /wp:paragraph -->

<!-- wp:code -->
<pre class="wp-block-code"><code>palettes &lt;- list(dino, hive, rumpus, taffy, sleuth, martian, krampus, tulip, donut, donette, creme, farmhand, mayhem, ballpit, january, pair1)

names(palettes) &lt;- c("dino", "hive", "rumpus", "taffy", "sleuth", "martian", "krampus", "tulip", "donut", "donette", "creme", "farmhand", "mayhem","ballpit","january","pair1")</code></pre>
<!-- /wp:code -->

<!-- wp:paragraph -->
<p>Then I wrote a function using rectangles in base R graphing to make a chart:</p>
<!-- /wp:paragraph -->

<!-- wp:code -->
<pre class="wp-block-code"><code>paletteprint &lt;- function() {
  bordercolor &lt;- "black"
  x &lt;- c(-8,27)
  y &lt;- c(0,(length(palettes)*3))
  i &lt;- (length(palettes)*3)
  n &lt;- 1
  plot(1, type="n", xlab="", ylab="", xlim=x, ylim=y,axes=FALSE, frame.plot=FALSE)
  for (p in palettes) {
    rect(0,i,3,i-1, col = p&#91;1], border = bordercolor, lwd = 2)
    rect(3,i,6,i-1, col = p&#91;2], border = bordercolor, lwd = 2)
    rect(6,i,9,i-1, col = p&#91;3], border = bordercolor, lwd = 2)
    rect(9,i,12,i-1, col = p&#91;4], border = bordercolor, lwd = 2)
    rect(12,i,15,i-1, col = p&#91;5], border = bordercolor, lwd = 2)
    rect(15,i,18,i-1, col = p&#91;6], border = bordercolor, lwd = 2)
    rect(18,i,21,i-1, col = p&#91;7], border = bordercolor, lwd = 2)
    rect(21,i,24,i-1, col = p&#91;8], border = bordercolor, lwd = 2)
    rect(24,i,27,i-1, col = p&#91;9], border = bordercolor, lwd = 2)
    text(x = -8, y = i-.5, # Coordinates
         label = names(palettes&#91;n]), pos =4)
    i = i-3
    n= n+1
  }
}</code></pre>
<!-- /wp:code -->

<!-- wp:paragraph -->
<p>The output when calling paletteprint() looks like this:</p>
<!-- /wp:paragraph -->

<!-- wp:image {"align":"center","id":761,"width":525,"height":350,"sizeSlug":"full","linkDestination":"none"} -->
<div class="wp-block-image"><figure class="aligncenter size-full is-resized"><img src="https://sofiazaidman.com/wp-content/uploads/2022/01/Screen-Shot-2022-01-22-at-2.24.10-PM.png" alt="" class="wp-image-761" width="525" height="350"/></figure></div>
<!-- /wp:image -->

<!-- wp:separator -->
<hr class="wp-block-separator"/>
<!-- /wp:separator -->

<!-- wp:heading {"textAlign":"left"} -->
<h2 class="has-text-align-left">Colordisplay: view, shuffle and choose the number of colors in a palette <meta charset="utf-8"></h2>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Next I wanted a function that would display the colors in a selected palette, display them in a straightforward way, allow me to choose how many colors I wanted to see, shuffle the colors if desired, and return a list of the colors displayed.</p>
<!-- /wp:paragraph -->

<!-- wp:code -->
<pre class="wp-block-code"><code>colordisplay &lt;- function(palette, number = 9, bordercolor = "black", shuffle = "no") {

  if (shuffle == "yes"){
    shuff &lt;- sample(seq(from = 1, to = length(palette), by = 1), size = length(palette), replace = FALSE)
  }

  else {
    shuff &lt;- seq(1, length(palette), by=1)
  }

  if (number == 9) {
    names = c(palette&#91;shuff&#91;1]], palette&#91;shuff&#91;2]],palette&#91;shuff&#91;3]],palette&#91;shuff&#91;4]],palette&#91;shuff&#91;5]],palette&#91;shuff&#91;6]],palette&#91;shuff&#91;7]],palette&#91;shuff&#91;8]],palette&#91;shuff&#91;9]])
    title &lt;- paste(names, collapse = ", ")
    x &lt;- c(0,3)
    y &lt;- c(7,10)
    plot(1, type="n", xlab="", ylab="", xlim=x, ylim=y,axes=FALSE, main = title, frame.plot=FALSE)
    rect(0,10,1,9, col = palette&#91;shuff&#91;1]], border = bordercolor, lwd = 4)
    rect(1,10,2,9, col = palette&#91;shuff&#91;2]], border = bordercolor, lwd = 4)
    rect(2,10,3,9, col = palette&#91;shuff&#91;3]], border = bordercolor, lwd = 4)
    rect(0,9,1,8, col = palette&#91;shuff&#91;4]], border = bordercolor, lwd = 4)
    rect(1,9,2,8, col = palette&#91;shuff&#91;5]], border = bordercolor, lwd = 4)
    rect(2,9,3,8, col = palette&#91;shuff&#91;6]], border = bordercolor, lwd = 4)
    rect(0,8,1,7, col = palette&#91;shuff&#91;7]], border = bordercolor, lwd = 4)
    rect(1,8,2,7, col = palette&#91;shuff&#91;8]], border = bordercolor, lwd = 4)
    rect(2,8,3,7, col = palette&#91;shuff&#91;9]], border = bordercolor, lwd = 4)

    return(title)
  }

  else if (number == 8) {
    names = c(palette&#91;shuff&#91;1]], palette&#91;shuff&#91;2]],palette&#91;shuff&#91;3]],palette&#91;shuff&#91;4]],palette&#91;shuff&#91;5]],palette&#91;shuff&#91;6]],palette&#91;shuff&#91;7]],palette&#91;shuff&#91;8]])
    title &lt;- paste(names, collapse = ", ")
    x &lt;- c(0,4)
    y &lt;- c(8,10)
    plot(1, type="n", xlab="", ylab="", xlim=x, ylim=y,axes=FALSE, main=title, frame.plot=FALSE)
    rect(0,10,1,9, col = palette&#91;shuff&#91;1]], border = bordercolor, lwd = 4)
    rect(1,10,2,9, col = palette&#91;shuff&#91;2]], border = bordercolor, lwd = 4)
    rect(2,10,3,9, col = palette&#91;shuff&#91;3]], border = bordercolor, lwd = 4)
    rect(3,10,4,9, col = palette&#91;shuff&#91;4]], border = bordercolor, lwd = 4)
    rect(0,9,1,8, col = palette&#91;shuff&#91;5]], border = bordercolor, lwd = 4)
    rect(1,9,2,8, col = palette&#91;shuff&#91;6]], border = bordercolor, lwd = 4)
    rect(2,9,3,8, col = palette&#91;shuff&#91;7]], border = bordercolor, lwd = 4)
    rect(3,9,4,8, col = palette&#91;shuff&#91;8]], border = bordercolor, lwd = 4)

    return(title)
  }

# and so on until number == 2</code></pre>
<!-- /wp:code -->

<!-- wp:paragraph -->
<p>Ok, yes, there might have been a better way to set up a loop that doesn't require that I write a new if statement for every number of colors BUT I did want control of how the display looks for each number of colors chosen so honestly I don't think it's really that needlessly wordy. </p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>If I call colordisplay, choose my palette and use all default parameters, the result will look like this (fully zoomed out):</p>
<!-- /wp:paragraph -->

<!-- wp:code -->
<pre class="wp-block-code"><code>colordisplay(january)
</code></pre>
<!-- /wp:code -->

<!-- wp:image {"align":"center","id":763,"width":427,"height":330,"sizeSlug":"full","linkDestination":"none"} -->
<div class="wp-block-image"><figure class="aligncenter size-full is-resized"><img src="https://sofiazaidman.com/wp-content/uploads/2022/01/Screen-Shot-2022-01-22-at-2.40.45-PM.png" alt="" class="wp-image-763" width="427" height="330"/></figure></div>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>I will also get this as output:</p>
<!-- /wp:paragraph -->

<!-- wp:code -->
<pre class="wp-block-code"><code>&#91;1] "#F1F07C, #BB7EEE, #98EAC8, #65859C, #8C2438, #ADA99D, #AD840C, #398726, #EC5570"</code></pre>
<!-- /wp:code -->

<!-- wp:paragraph -->
<p>If I call colordisplay with shuffle on, I get a randomly shuffled output with the corresponding list of colors:</p>
<!-- /wp:paragraph -->

<!-- wp:code -->
<pre class="wp-block-code"><code>colordisplay(january, shuffle = "yes")
</code></pre>
<!-- /wp:code -->

<!-- wp:image {"align":"center","id":765,"width":416,"height":330,"sizeSlug":"full","linkDestination":"none"} -->
<div class="wp-block-image"><figure class="aligncenter size-full is-resized"><img src="https://sofiazaidman.com/wp-content/uploads/2022/01/Screen-Shot-2022-01-22-at-2.55.18-PM.png" alt="" class="wp-image-765" width="416" height="330"/></figure></div>
<!-- /wp:image -->

<!-- wp:code -->
<pre class="wp-block-code"><code>&#91;1] "#AD840C, #98EAC8, #8C2438, #EC5570, #F1F07C, #65859C, #BB7EEE, #398726, #ADA99</code></pre>
<!-- /wp:code -->

<!-- wp:paragraph -->
<p>Changing the number parameter between 2-8 colors will result in the following shapes:</p>
<!-- /wp:paragraph -->

<!-- wp:gallery {"ids":[768,769,770,771,772,773,774],"columns":4,"linkTo":"none"} -->
<figure class="wp-block-gallery columns-4 is-cropped"><ul class="blocks-gallery-grid"><li class="blocks-gallery-item"><figure><img src="https://sofiazaidman.com/wp-content/uploads/2022/01/Screen-Shot-2022-01-22-at-3.06.15-PM-700x525.png" alt="" data-id="768" data-full-url="https://sofiazaidman.com/wp-content/uploads/2022/01/Screen-Shot-2022-01-22-at-3.06.15-PM.png" data-link="https://sofiazaidman.com/?attachment_id=768#main" class="wp-image-768"/></figure></li><li class="blocks-gallery-item"><figure><img src="https://sofiazaidman.com/wp-content/uploads/2022/01/Screen-Shot-2022-01-22-at-3.06.31-PM-700x536.png" alt="" data-id="769" data-full-url="https://sofiazaidman.com/wp-content/uploads/2022/01/Screen-Shot-2022-01-22-at-3.06.31-PM.png" data-link="https://sofiazaidman.com/?attachment_id=769#main" class="wp-image-769"/></figure></li><li class="blocks-gallery-item"><figure><img src="https://sofiazaidman.com/wp-content/uploads/2022/01/Screen-Shot-2022-01-22-at-3.06.47-PM-700x521.png" alt="" data-id="770" data-full-url="https://sofiazaidman.com/wp-content/uploads/2022/01/Screen-Shot-2022-01-22-at-3.06.47-PM.png" data-link="https://sofiazaidman.com/?attachment_id=770#main" class="wp-image-770"/></figure></li><li class="blocks-gallery-item"><figure><img src="https://sofiazaidman.com/wp-content/uploads/2022/01/Screen-Shot-2022-01-22-at-3.07.00-PM-700x530.png" alt="" data-id="771" data-full-url="https://sofiazaidman.com/wp-content/uploads/2022/01/Screen-Shot-2022-01-22-at-3.07.00-PM.png" data-link="https://sofiazaidman.com/?attachment_id=771#main" class="wp-image-771"/></figure></li><li class="blocks-gallery-item"><figure><img src="https://sofiazaidman.com/wp-content/uploads/2022/01/Screen-Shot-2022-01-22-at-3.07.17-PM-700x521.png" alt="" data-id="772" data-full-url="https://sofiazaidman.com/wp-content/uploads/2022/01/Screen-Shot-2022-01-22-at-3.07.17-PM.png" data-link="https://sofiazaidman.com/?attachment_id=772#main" class="wp-image-772"/></figure></li><li class="blocks-gallery-item"><figure><img src="https://sofiazaidman.com/wp-content/uploads/2022/01/Screen-Shot-2022-01-22-at-3.07.32-PM-700x525.png" alt="" data-id="773" data-full-url="https://sofiazaidman.com/wp-content/uploads/2022/01/Screen-Shot-2022-01-22-at-3.07.32-PM.png" data-link="https://sofiazaidman.com/?attachment_id=773#main" class="wp-image-773"/></figure></li><li class="blocks-gallery-item"><figure><img src="https://sofiazaidman.com/wp-content/uploads/2022/01/Screen-Shot-2022-01-22-at-3.07.45-PM-700x529.png" alt="" data-id="774" data-full-url="https://sofiazaidman.com/wp-content/uploads/2022/01/Screen-Shot-2022-01-22-at-3.07.45-PM.png" data-link="https://sofiazaidman.com/?attachment_id=774#main" class="wp-image-774"/></figure></li></ul></figure>
<!-- /wp:gallery -->

<!-- wp:paragraph -->
<p>You can also choose to display a palette from another package, or using paletteer:</p>
<!-- /wp:paragraph -->

<!-- wp:code -->
<pre class="wp-block-code"><code>colordisplay(paletteer_d("nationalparkcolors::DeathValley"), number = 6, shuffle = "yes")</code></pre>
<!-- /wp:code -->

<!-- wp:image {"align":"center","id":776,"width":363,"height":273,"sizeSlug":"full","linkDestination":"none"} -->
<div class="wp-block-image"><figure class="aligncenter size-full is-resized"><img src="https://sofiazaidman.com/wp-content/uploads/2022/01/Screen-Shot-2022-01-22-at-3.13.31-PM.png" alt="" class="wp-image-776" width="363" height="273"/></figure></div>
<!-- /wp:image -->

<!-- wp:code -->
<pre class="wp-block-code"><code>&#91;1] "#E79498FF, #73652DFF, #F7E790FF, #514289FF, #B23539FF, #FAB57CFF"</code></pre>
<!-- /wp:code -->

<!-- wp:separator -->
<hr class="wp-block-separator"/>
<!-- /wp:separator -->

<!-- wp:heading -->
<h2><meta charset="utf-8">Colorbar: view a palette as a bar chart:</h2>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>I wanted to write a function that would allow me to input a palette, the number of colors I want from that palette, and whether I want the colors to be shuffled, and output a sample bar chart. This is the main functionality that I feel current color packages lack. Of course, you can keep your own code for a sample bar chart and test colors manually, but this function has made it so much easier to quickly assess whether a set of colors will work for a visualization. I also think it's a ton of fun to shuffle the colors again and again and see what comes up!</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>The code behind this function is pretty similar to what I wrote for colordisplay. Full code for all functions can be found in <a href="https://github.com/szaidman22/colorways/tree/master/R" target="_blank" rel="noreferrer noopener" title="this github repo">this github repo</a>.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Let's try colorbar with the tulip palette and default parameters:</p>
<!-- /wp:paragraph -->

<!-- wp:code -->
<pre class="wp-block-code"><code>colorbar(palette = tulip)
</code></pre>
<!-- /wp:code -->

<!-- wp:image {"align":"center","id":785,"width":435,"height":353,"sizeSlug":"full","linkDestination":"none"} -->
<div class="wp-block-image"><figure class="aligncenter size-full is-resized"><img src="https://sofiazaidman.com/wp-content/uploads/2022/01/Screen-Shot-2022-01-23-at-10.37.12-AM.png" alt="" class="wp-image-785" width="435" height="353"/></figure></div>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>We can add up to 7 colors in the bar chart:</p>
<!-- /wp:paragraph -->

<!-- wp:code -->
<pre class="wp-block-code"><code><meta charset="utf-8">colorbar(palette = tulip, number = 7)</code></pre>
<!-- /wp:code -->

<!-- wp:image {"align":"center","id":783,"width":437,"height":362,"sizeSlug":"full","linkDestination":"none"} -->
<div class="wp-block-image"><figure class="aligncenter size-full is-resized"><img src="https://sofiazaidman.com/wp-content/uploads/2022/01/Screen-Shot-2022-01-23-at-10.33.52-AM.png" alt="" class="wp-image-783" width="437" height="362"/></figure></div>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>We can choose to stack the bars:</p>
<!-- /wp:paragraph -->

<!-- wp:code -->
<pre class="wp-block-code"><code><meta charset="utf-8">colorbar(palette = tulip, number = 7, stacked = "yes")</code></pre>
<!-- /wp:code -->

<!-- wp:image {"align":"center","id":787,"width":428,"height":358,"sizeSlug":"full","linkDestination":"none"} -->
<div class="wp-block-image"><figure class="aligncenter size-full is-resized"><img src="https://sofiazaidman.com/wp-content/uploads/2022/01/Screen-Shot-2022-01-23-at-10.41.54-AM.png" alt="" class="wp-image-787" width="428" height="358"/></figure></div>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>We can shuffle the colors:</p>
<!-- /wp:paragraph -->

<!-- wp:code -->
<pre class="wp-block-code"><code><meta charset="utf-8">colorbar(palette = tulip, number = 7, stacked = "yes", shuffle = "yes")</code></pre>
<!-- /wp:code -->

<!-- wp:image {"align":"center","id":789,"width":433,"height":361,"sizeSlug":"full","linkDestination":"none"} -->
<div class="wp-block-image"><figure class="aligncenter size-full is-resized"><img src="https://sofiazaidman.com/wp-content/uploads/2022/01/Screen-Shot-2022-01-23-at-10.45.59-AM.png" alt="" class="wp-image-789" width="433" height="361"/></figure></div>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>Like colordisplay, colorbar will always output the ordered list of colors for each chart:</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>[1] "#D7DDDE, #A25E5F, #FFC27E, #FFFBC7, #9B8054, #E0E38C, #E0C2F6"</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Lastly, we can use palettes from other packages:</p>
<!-- /wp:paragraph -->

<!-- wp:code -->
<pre class="wp-block-code"><code>colorbar(palette = paletteer_d("wesanderson::IsleofDogs2"), number = 4)
</code></pre>
<!-- /wp:code -->

<!-- wp:image {"align":"center","id":791,"width":430,"height":353,"sizeSlug":"full","linkDestination":"none"} -->
<div class="wp-block-image"><figure class="aligncenter size-full is-resized"><img src="https://sofiazaidman.com/wp-content/uploads/2022/01/Screen-Shot-2022-01-23-at-10.52.41-AM.png" alt="" class="wp-image-791" width="430" height="353"/></figure></div>
<!-- /wp:image -->

<!-- wp:separator -->
<hr class="wp-block-separator"/>
<!-- /wp:separator -->

<!-- wp:heading -->
<h2><meta charset="utf-8">Colorscatter: view a palette as a scatter plot:</h2>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Colorscatter is virtually the same function as colorbar, but instead of a bar chart, color scatter will display a scatter plot. The only difference in parameters between the two is that color scatter lacks the "stacked" feature, for obvious reasons.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Let's try the default colorscatter function using the "ballpit" palette:</p>
<!-- /wp:paragraph -->

<!-- wp:code -->
<pre class="wp-block-code"><code>colorscatter(palette = ballpit)</code></pre>
<!-- /wp:code -->

<!-- wp:image {"align":"center","id":794,"width":448,"height":362,"sizeSlug":"full","linkDestination":"none"} -->
<div class="wp-block-image"><figure class="aligncenter size-full is-resized"><img src="https://sofiazaidman.com/wp-content/uploads/2022/01/Screen-Shot-2022-01-23-at-2.16.03-PM.png" alt="" class="wp-image-794" width="448" height="362"/></figure></div>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>Like colorbar, we can view up to 7 colors using colorscatter:</p>
<!-- /wp:paragraph -->

<!-- wp:code -->
<pre class="wp-block-code"><code>colorscatter(palette = ballpit, number = 7)
</code></pre>
<!-- /wp:code -->

<!-- wp:image {"align":"center","id":795,"width":449,"height":355,"sizeSlug":"full","linkDestination":"none"} -->
<div class="wp-block-image"><figure class="aligncenter size-full is-resized"><img src="https://sofiazaidman.com/wp-content/uploads/2022/01/Screen-Shot-2022-01-23-at-2.19.06-PM.png" alt="" class="wp-image-795" width="449" height="355"/></figure></div>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>We can also shuffle colors:</p>
<!-- /wp:paragraph -->

<!-- wp:code -->
<pre class="wp-block-code"><code>colorscatter(palette = ballpit, number = 5, shuffle = "yes")
</code></pre>
<!-- /wp:code -->

<!-- wp:image {"align":"center","id":796,"width":448,"height":359,"sizeSlug":"full","linkDestination":"none"} -->
<div class="wp-block-image"><figure class="aligncenter size-full is-resized"><img src="https://sofiazaidman.com/wp-content/uploads/2022/01/Screen-Shot-2022-01-23-at-2.23.03-PM.png" alt="" class="wp-image-796" width="448" height="359"/></figure></div>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>Colorscatter will also return an ordered list of colors each time it is run:</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>[1] "#C11736, #E2E442, #5C33FF, #00B6A0, #ACF64E"</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>And of course like colorbar, colorscatter will accept external palettes:</p>
<!-- /wp:paragraph -->

<!-- wp:code -->
<pre class="wp-block-code"><code>colorscatter(palette = paletteer_d("tvthemes::simpsons"), number = 5, shuffle = "yes")</code></pre>
<!-- /wp:code -->

<!-- wp:image {"align":"center","id":797,"width":434,"height":352,"sizeSlug":"full","linkDestination":"none"} -->
<div class="wp-block-image"><figure class="aligncenter size-full is-resized"><img src="https://sofiazaidman.com/wp-content/uploads/2022/01/Screen-Shot-2022-01-23-at-2.27.14-PM.png" alt="" class="wp-image-797" width="434" height="352"/></figure></div>
<!-- /wp:image -->
