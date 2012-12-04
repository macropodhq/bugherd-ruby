# BugHerd gem

Add the BugHerd widget to your Rails site.

## Installation

Add the following to your `Gemfile`:

```ruby
gem "bugherd"
```

...and then run bundle.

Add a file `config/initializers/bugherd.rb` containing:

```ruby
BugHerd.configure do |config|
  config.project_key = 'YOUR KEY HERE'
end
```

You can obtain the project key from your project's installation options in BugHerd.
