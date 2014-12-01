var issueOrder;

$(function() {
  Stripe.setPublishableKey($('meta[name="stripe-key"]').attr('content'));
  issueOrder.setupForm();
});

var issueOrder = {
  setupForm: function() {
    $('#new_issue_order').submit(function(e) {
      e.preventDefault();
      $('#submit_issue_order').attr('disabled', true);
      issueOrder.processCard();
      return false;
    });
  },
  processCard: function() {
    var card;
    card = {
      number: $('#card_number').val(),
      cvc: $('#card_code').val(),
      expMonth: $('#card_month').val(),
      expYear: $('#card_year').val()
    };
    Stripe.createToken(card, issueOrder.handleStripeResponse)
  },
  handleStripeResponse: function(status, response) {
    if (status == 200) {
      $('#issue_order_stripe_card_token').val(response.id);
      // $('#new_issue_order')[0].submit();
      $.ajax({
        type: "POST",
        url: $('#new_issue_order').attr('action'),
        data: { "issue_order": {
          "stripe_card_token": $('#issue_order_stripe_card_token').val(),
          "email": $('#issue_order_email').val(),
          },
          "issue_id": $('#issue_order_issue_id').val()
        },
        dataType: "script"
      }, issueOrder.processOrder);
    }
    else {
      $('#stripe_error').text(response.error.message);
      $('input[type=submit]').attr('disabled', false)
    }

    redirectToRoot();
  }
}

function redirectToRoot() {
  window.location.href = '/';
}
