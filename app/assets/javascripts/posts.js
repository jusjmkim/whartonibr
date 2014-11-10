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

$(function() {
  showPostListener();
});