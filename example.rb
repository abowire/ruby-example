require 'oauth2'

# Create a "Private" API Key (Settings -> API Keys) and enter the details here:
client_id = "YOUR_ABOWIRE_CLIENT_ID_HERE"
client_secret = "YOUR_ABOWIRE_CLIENT_SECRET_HERE"

# Configure your client
client = OAuth2::Client.new(
  client_id,
  client_secret, 
  :site => 'https://api.abowire.com',
  :authorize_url => 'https://auth.abowire.com/oauth2/auth', 
  :token_url => 'https://auth.abowire.com/oauth2/token',
  :auth_scheme => :basic_auth
)

# Retrieve an access token
token = client.client_credentials.get_token()

# The oauth2 library will now authenticate your requests automatically under the hood
response = token.get('/v1/user/customer')

print response.body

# But you can use any HTTP client you want
# You will only need to send token.token as a Bearer token in an Authorization header
# 'Authorization': "Bearer #{token.token}"