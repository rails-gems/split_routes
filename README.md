# SplitRoutes
Short description and motivation.

## Usage
How to use my plugin.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'split_routes', github: 'rails-gems/split_routes', branch: 'master'
```

And then execute:
```bash
$ bundle
```

### 创建`Split Route File`

```
$ rails g split_routes admin
```
或者自定义创建`Slite Route File`
```
# routes/admin.rb
# routes/api.rb
```
```ruby
# eg routes/api.rb
defaults format: :json do
  constraints subdomain: /api/ do
    mount_devise_token_auth_for 'User', at: 'auth'
    scope module: 'api' do
      namespace :v1 do
        resources :tasks
      end
    end
  end
end
```
```ruby
# eg: routes/admin.rb
defaults format: :json do
  constraints subdomain: /apa/ do
    mount_devise_token_auth_for 'Admin', at: 'admin_auth'
    scope module: 'admin' do
    end
  end
end
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
