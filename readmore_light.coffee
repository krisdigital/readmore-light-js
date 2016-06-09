## Minimal readmore
## by @krisdigital 2016
class ReadmoreLight
  constructor: ($el, opts)->
    defaults = {
      moreTemplate: $('<a data-readmore-toggle href="#">+ Read more</a>')
      lessTemplate: $('<a data-readless-toggle href="#">- Read less</a>'),
      transitionTime: 350
    }
    opts = @opts = $.extend(defaults, opts)
    @$el = $el
    
    
    $el.append(@opts.moreTemplate)
    $el.append(@opts.lessTemplate)
    
    origHeight = $el.height()
    openHeight = 0
    $(window).on 'resize', ->
      openHeight =  $el[0].scrollHeight
      $el.toggleClass('readmore-not-needed', openHeight <= origHeight)
      
    $(window).trigger('resize')
    
    $el.find('[data-readmore-toggle]').on 'click', (e) ->
      e.preventDefault()
      $el.addClass('open').css({'maxHeight': openHeight})
      setTimeout ->
        $el.addClass('open').css({'maxHeight': 10000})
      , opts.transitionTime
      
    $el.find('[data-readless-toggle]').on 'click', (e) ->
      e.preventDefault()
      $el.css({'maxHeight': origHeight})
      setTimeout ->
        $el.removeClass('open')
      , opts.transitionTime
      
      
window.ReadmoreLight = ReadmoreLight