
![Morion Logo](https://raw.github.com/joaovitoras/morion/master/app/assets/images/morion/morion_brand_with_bg_reversed.png)

[![Gem Version](https://badge.fury.io/rb/morion.svg)](https://badge.fury.io/rb/morion)
[![Build Status](https://travis-ci.org/joaovitoras/morion.svg?branch=master)](https://travis-ci.org/joaovitoras/morion)
[![Code Climate](https://img.shields.io/codeclimate/github/joaovitoras/morion.svg)](https://codeclimate.com/github/joaovitoras/morion)
[![Inline docs](http://inch-ci.org/github/joaovitoras/morion.svg)]([https://inch-ci.org/github/joaovitoras/morion)

Morion allows viewing of all images from a rails application

## Get Started

Add this line to your application’s Gemfile:

```ruby
group :development do
  gem "morion"
end

```

And run bundle to install morion and dependencies

```sh
bundle install
```

Next, add the dashboard to your `config/routes.rb`.

```ruby
if Rails.env.development?
  mount Morion::Engine => "/morion"
end
```

To finish visit morion page

```sh
open http://localhost:3000/morion
```

![Morion Logo](https://raw.github.com/joaovitoras/morion/master/app/assets/images/morion/preview.png)

## Development Environment

```sh
git clone git@github.com:joaovitoras/morion.git
cd morion
bundle install
```

## Running
Dummy is and app provided by rails to test engine mounted to route /morion
```sh
rails s
open http://localhost:3000/morion
```

## TODO
- [x] Whitelist and Blacklist config
- [ ] Find file by name
- [ ] find folder
- [ ] copy folder path
