Rails.configuration.stripe = {
  :publishable_key => 'pk_test_mEfPmZ2dXZ4iCu1GGfvWq6qk',
  :secret_key      => 'sk_test_FPBhmFiCuqecJroPOgdSIiXW'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]