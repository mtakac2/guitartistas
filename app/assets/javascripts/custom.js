$(function () {
  $('a.ajax').live('click', function(e) {    
    e.preventDefault();    
    $.getScript(this.href);      
    history.pushState(null, '', this.href);
    return false;
    }
  );

  $(window).bind("popstate", function () {
    $.getScript(location.href);
  });

  /* main-menu */
  $('a#biographies-link').click(function(e) {
    e.preventDefault();
    $('ul#biographies-list').slideToggle(300, '');
  });

  $('a#multimedia-link').click(function(e) {
    e.preventDefault();
    $('ul#multimedia-list').slideToggle(300, '');
  });
})