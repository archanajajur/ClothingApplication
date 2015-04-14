# Be sure to restart your server when you modify this file.

ClothingApp::Application.config.session_store :cookie_store, key: '_ClothingApp_session'

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rails generate session_migration")
# ClothingApp::Application.config.session_store :active_record_store
#ClothingApp::Application.config.session_store :cookie_store, key: '_your_session', domain: {
 # production: 'production_domain',
  #development: 'development_domain'
#}.fetch(Rails.env.to_sym, :all)