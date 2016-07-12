init = ->
  Tabletop.init
    key: spreadsheet_key
    callback: showInfo
    simpleSheet: false
  return

showInfo = (data, tabletop) ->
  console.log data
  return

$ ->
  init()

spreadsheet_key = '1j0LdzGrtjKGadzzDS75Jiu7exAAMbv1OHQfLjpBslvs'
