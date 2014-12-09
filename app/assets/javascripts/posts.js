// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

function showPostListener() {
  $('a.post-preview').click(function(e) {
    e.preventDefault();
    var id = this.id;
    displayModal(id);
  });
}

function displayModal(id) {
  $('#modal-content' + id).modal('show');
}

function arrowListener() {
  $('span.arrow').click(function(e) {
    e.preventDefault();
    console.log('arrow clicked');
    var data = $(this).attr('id').split('-');
    var id = $(this).parent().attr('id').split('-')[1];
    changePosition(data);
    updatePosition(id, data);
  });
}

function changePosition(data) {
  var post = $("#post-position-" + data[1]); 
  var belowPost = post.next().attr('class');
  var abovePost = post.prev().attr('class');
  if (data[0] === 'up' && abovePost === 'post-container') {
    post.prev().before(post.detach());
  } else if (data[0] === 'down' && belowPost === 'post-container') {
    post.next().after(post.detach());
  }
}

function updatePosition(id, data) {

}

$(function() {
  showPostListener();
  arrowListener();
});
