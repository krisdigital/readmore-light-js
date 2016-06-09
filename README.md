# readmore-light-js
Minimal responsive jQuery readmore JS with CSS transitions where possible

[Readmore.js](https://github.com/jedfoster/Readmore.js) had problems with iframes in Safari, so I rolled out this little script and tested it in Safari, Chrome, Firefox and IE10.

It has not many options so use it as a starting point if you need more.

It works in production, is tiny and you can check it out [here](https://www.surfcampseurope.com/en/camps/france/south-west-atlantic/dreamsea-surf-camp-france)!

Not using CoffeeScript? [Check this out!](http://js2.coffee)
Not using SCSS? [What about this and moving from there?](http://www.sassmeister.com)

## Usage
  _HTML_  
  ```
  <div class="faded-read-more read-more-c">
    <div class="read-more">
     Your text is much too long, bro, you should totally shorten it! 
    </div>
  </div>
  ```
  
  _JS_  
  ```
  $('.read-more').each ->
    new ReadmoreLight($(this), {
      moreTemplate: $('#more-link-template').html()
      lessTemplate: false
    })
  ```
  
  
