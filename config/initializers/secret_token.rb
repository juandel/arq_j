# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Arq::Application.config.secret_key_base = '7113cb01d27d3a1bacfcf8acc7d7119faf8dad9a650e3d29cf4dc434e961c027531ced81e3b30e2e6785438016901743772fd838d5586b74296f77a087c39005'
