# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_CnameQRV_session',
  :secret      => '4b91c392a760bb98d3283225ca2f69ba04fcf221a68831f0ee6c563d5a65fd8f5ba172fa130006d3b3081f218658d11be9415bc858ad0dab9b3158701d03205d'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
