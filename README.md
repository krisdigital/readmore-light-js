# readmore-light-js
Minimal responsive jQuery readmore JS with CSS transitions where possible, use it as it or as a starting point.

It works in production, is tiny and you can check it out [here](https://www.surfcampseurope.com/en/camps/france/south-west-atlantic/dreamsea-surf-camp-france)!

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
  
  
