# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_foodcartfinder_session',
  :secret      => 'f5bb191f1f4222d792882987deec60630498f6b88d5fa0bdb60f338304dde5fef90ab8f677b18e1120460880b8a1cd4189ad62c2da5e44c57449b859b1d82094'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
