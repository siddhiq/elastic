# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $vartypeahead = $('#query')
  engine = new Bloodhound(
    name: "typeaheads"
    remote:
      url: "/projects/autocomplete?query=%QUERY"

    datumTokenizer: (d) ->
      d

    queryTokenizer: (d) ->
      d
  )
  engine.initialize()
  $vartypeahead.typeahead
    minLength: 2
    highlight: true
  ,
    source: engine.ttAdapter()
