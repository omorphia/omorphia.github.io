(function() {
  var init, showInfo, spreadsheet_key;

  init = function() {
    Tabletop.init({
      key: spreadsheet_key,
      callback: showInfo,
      simpleSheet: false
    });
  };

  showInfo = function(data, tabletop) {
    console.log(data);
  };

  spreadsheet_key = '1j0LdzGrtjKGadzzDS75Jiu7exAAMbv1OHQfLjpBslvs';

}).call(this);
