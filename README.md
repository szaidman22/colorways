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
<p>Colordisplay will display as little as 2 colors.</p>
<!-- /wp:paragraph -->

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
