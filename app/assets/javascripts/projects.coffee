# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ready = undefined
ready = ->
  engine = new Bloodhound(
    datumTokenizer: (d) ->
      console.log d
      Bloodhound.tokenizers.whitespace d.name

    queryTokenizer: Bloodhound.tokenizers.whitespace
    remote:
      url: "../projects/autocomplete?query=%QUERY"
  )
  promise = engine.initialize()
  promise.done(->
    console.log "success"
  ).fail ->
    console.log "err"

  $(".typeahead").typeahead null,
    name: "engine"
    displayKey: "name"
    source: engine.ttAdapter()


$(document).ready ready
$(document).on "page:load", ready