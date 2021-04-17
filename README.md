## Using Abowire with Ruby

To connect your Ruby application with Abowire, you will require an oauth2 gem to handle the authentication process for you. For security reasons it's not recommended to implement one of your own.

### Getting started

This example shows how to configure the `oauth2` gem for Ruby.

You can find more information about this gem here:
https://github.com/oauth-xx/oauth2/blob/v1.4.7/README.md

Or you can choose any other gem here:
https://oauth.net/code/ruby/

### Running the example

1. Go to your Abowire workspace and create a "Private" API Key (Settings -> API Keys).

2. Edit the `example.rb` with your credentials:

```ruby
client_id = "YOUR_ABOWIRE_CLIENT_ID_HERE"
client_secret = "YOUR_ABOWIRE_CLIENT_SECRET_HERE"
```

3. Install dependencies:

```shell
$ bundle
```

4. Execute the example:

```shell
$ ruby example.rb
```

### Using the oauth2 gem in your Ruby project

Add this line to your application's Gemfile:

```ruby
gem 'oauth2'
```

And then execute:

```shell
$ bundle
```

You can then move the example to your codebase.
