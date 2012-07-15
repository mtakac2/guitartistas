//= require jquery
//= require jquery_ujs
//= require active_admin/base

$(document).ready(function() {
  $('.cover').click(function(e){
    e.preventDefault();

    var photo_id = $(this).attr('data-photo_id');
    var album_id = $(this).attr('data-album_id');

    $.ajax({
      type: 'POST',
      url: 'set_cover_photo',
      dataType: 'json',
      data: { photo_id: photo_id, album_id: album_id }
    });
  });
});  