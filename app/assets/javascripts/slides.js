$(function(){
  $(document).foundation();

  $("#slides").slidesjs({
    width: 940,
    height: 500,
    pagination: {
      active: true,
    },
    navigation: {
      active: false
    },
    play: {
      active: true,
      effect: 'fade',
      interval: 5000,
      auto: true,
      swap: true
    },
    effect: {
      fade: {
        speed: 5000
      }
    }
  });
});