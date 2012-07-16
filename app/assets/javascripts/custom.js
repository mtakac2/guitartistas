/* 
 * Custom javascript for guitartistas.net
 * Author: Marek Takac
 * Created: 2012/07/16
 */

/* ajax functionality */
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
/* end ajax functionality */

/* block user and display overlay during ajax requests */
/*
$(function() {
  $(document).ajaxStart($.blockUI({ message: '<h1>Just a moment...</h1>' })).ajaxStop($.unblockUI);
});
*/
/* end block user */

/* twitter bootstrap carousel */
$(function() {
  $('.carousel').carousel({
    interval: 5000
  })
})