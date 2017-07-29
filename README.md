
![Morion Logo](https://raw.github.com/joaovitoras/morion/master/app/assets/images/morion/morion_brand_with_bg.png)

[![Gem Version](https://badge.fury.io/rb/morion.svg)](https://badge.fury.io/rb/morion)

Morion is a Rails Engine that enables the display of all images of a application

## Get Started

Add this line to your application’s Gemfile:

```ruby
gem "morion"
```

And run bundle to install morion and dependencies

```sh
bundle install
```

Next, add the dashboard to your `config/routes.rb`.

```ruby
mount Morion::Engine => "/morion"
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
cd /test/dummy
rails s
open http://localhost:3000/morion
```

This project rocks and uses MIT-LICENSE.
