var issueOrder;

$(function() {
  Stripe.setPublishableKey($('meta[name="stripe-key"]').attr('content'));
  issueOrder.setupForm();
});

issueOrder = {
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
      $('#new_issue_order')[0].submit();
    }
    else {
      $('#stripe_error').text(response.error.message);
      $('input[type=submit]').attr('disabled', false)
    }
  }
}

