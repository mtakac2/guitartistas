/* 
 * Custom javascript for guitartistas.net
 * Author: Marek Takac
 * Created: 2012/07/16
 */

/* AJAX FUNCTIONALITY */
$(function () {
  $('a.ajax').live('click', function(e) {
    $.blockUI({ 
      message: '<h1>Loading...</h1>',
      css: { backgroundColor: '#f00', color: '#fff'},
      overlayCSS: { backgroundColor: '#000', opacity: 0.7 }
    });   
    e.preventDefault();    
    $.getScript(this.href);      
    history.pushState(null, '', this.href);
    $.unblockUI();
    return false;
    }
  );

  $(window).bind("popstate", function () {
    $.getScript(location.href);
  });
});
/* END AJAX FUNCTIONALITY */

/* TWITTER BOOTSTRAP CAROUSEL */
$(function() {
  $('.carousel').carousel({
    interval: 5000
  });
})
/* END TWITTER BOOTSTRAP CAROUSEL */

/* JQUERY COLORBOX */
$(function() {
  $(".colorbox").colorbox({
    rel: 'group3',
    transition: 'elastic',
    width:"75%",
    height:"75%"    
  });
})
/* END JQUERY COLORBOX */