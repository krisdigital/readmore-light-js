# readmore-light-js
Minimal responsive jQuery readmore JS with CSS transitions where possible

[Readmore.js](https://github.com/jedfoster/Readmore.js) had problems with iframes in Safari, so I rolled out this little script and tested it in Safari, Chrome, Firefox and IE10.

It is not very flexible so use it as a starting point if you need.

## Usage

  ```
  $('.read-more').each ->
    new ReadmoreLight($(this), {
      moreTemplate: $('#more-link-template').html()
      lessTemplate: false
    })
  ```
  
  
