# BugHerd gem

Add the BugHerd widget to your Rails site. [Get a BugHerd account](http://www.bugherd.com/).

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

Alternatively you can set an environment variable called BUGHERD_PROJECT_KEY.

You can obtain the project key from your project's installation options in BugHerd.

Now add to the *head* tag in your layout(s):

```ruby
<%= bugherd_tag %>
```

If you use turbolinks, please be sure to use this instead:

```ruby
<%= bugherd_turbolinks_tag %>
```

## Meta data

BugHerd allows you to pass in extra data which will be added as metadata to any bug your users may log on the page where the widget is rendered.

```ruby
<%= bugherd_tag metadata: { user_id: current_user.id.to_s, controller: controller.controller_name } %>
```

## Pre-populate email addresses

If your site has logged in users and you use public feedback, have the email addresses pre-populated:

```ruby
<%= bugherd_tag reporter: { email: current_user.email, required: "true" } %>
```
