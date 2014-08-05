# QueView

Visibility into scheuled Que jobs.

[Que](https://github.com/chanks/que)

![screen shot 2014-08-05 at 11 50 46](https://cloud.githubusercontent.com/assets/697418/3806010/9d4a06dc-1c42-11e4-9616-9bc0a0b50679.png)

## Installation

Add this line to your application’s Gemfile:

```ruby
gem "que_view"
```

And mount the dashboard in your router.

```ruby
mount QueView::Engine, at: "que_view"
```
Be sure to [secure the dashboard](#security) in production.

## Security

#### Basic Authentication

Set the following variables in your environment or an initializer.

```ruby
ENV["QUEVIEW_USERNAME"] = "rock"
ENV["QUEVIEW_PASSWORD"] = "aroundtheclock"
```

#### Devise

```ruby
authenticate :user, lambda {|user| user.admin? } do
  mount QueView::Engine, at: "que_view"
end
```

## TODO

- add rspec tests
- filter tasks by type

Know a bit about Que? [Suggestions](https://github.com/tasboa/que_view/issues) are greatly appreciated.

## History

View the [changelog](https://github.com/tasboa/que_view/blob/master/CHANGELOG.md)

## Contributing

Everyone is encouraged to help improve this project. Here are a few ways you can help:

- [Report bugs](https://github.com/tasboa/que_view/issues)
- Fix bugs and [submit pull requests](https://github.com/tasboa/que_view/pulls)
- Write, clarify, or fix documentation
- Suggest or add new features
