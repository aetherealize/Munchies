# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_munchies_session',
  :secret      => 'cb848d2e627a5facf2a18f196aa1aae9ad5ccc5ba755b3506526ca29be03d0838835c490eb47ae3bc06dc7b944049010fdca75ade2b51178f8ee1b9faccd9c8c'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
