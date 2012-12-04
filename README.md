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

Now add to the *head* tag in your layout(s):

```ruby
<%= bugherd_tag %>
```

## Meta data

BugHerd allows you to pass in extra data which will be added as metadata to any bug your users may log on the page where the widget is rendered.

```ruby
<%= bugherd_tag :metadata => { :user_id => current_user.id.to_s, :controller => controller.controller_name } %>
```
