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
    var data = $(this).attr('id').split('-');
    var id = $(this).parent().attr('id').split('-')[1];
    changePosition(data, id);
  });
}

function changePosition(data, id) {
  var post = $("#post-position-" + data[1] + '-id-' + id); 
  var belowPost = post.next();
  var abovePost = post.prev();
  var belowPostClass = belowPost.attr('class');
  var abovePostClass = abovePost.attr('class');
  if (data[0] === 'up' && abovePostClass === 'post-container') {
    updatePosition(parsePosition(abovePost), parsePosition(post));
    abovePost.before(post.detach());
  } else if (data[0] === 'down' && belowPostClass === 'post-container') {
    updatePosition(parsePosition(belowPost), parsePosition(post));
    belowPost.after(post.detach());
  }
}

function parsePosition(post) {
  var postId = post.attr('id').split('-');
  var postData = {
    position: postId[2],
    id: postId[4]
  }

  return postData;
}

function updatePosition(targetPost, currentPost) {
  $.ajax({
    type: 'PATCH',
    dataType: 'JSON',
    url: '/posts/' + currentPost.id,
    data: { targetPostId: targetPost.id,
            targetPostPosition: targetPost.position,
            currentPostId: currentPost.id,
            currentPostPosition: currentPost.position
    }
  });
}

$(function() {
  showPostListener();
  arrowListener();
});
