# Jekyll Markdown Block

[![Gem Version](https://badge.fury.io/rb/jekyll-markdown-block.png)](http://badge.fury.io/rb/jekyll-markdown-block) [![Build Status](https://travis-ci.org/imathis/jekyll-markdown-block.png)](https://travis-ci.org/imathis/jekyll-markdown-block)

Why? Because you should be able to:

- Write markdown anywhere.
- {% include %} markdown files anywhere.

## Installation

Add this line to your application's Gemfile under
the :jekyll_plugins group:

```ruby
group :jekyll_plugins do
  gem 'jekyll-markdown-block'
end
```

And then execute:

    $ bundle

Next add this to your plugins folder to automatically load any Jekyll plugins in your :jekyll_plugins group.

```ruby
# in _plugins/bundler.rb
require "bundler/setup"
Bundler.require(:jekyll_plugins)

```

Or you can just add a ruby file to your Jekyll plugins directory with the line `require "jekyll-markdown-block"`

## Usage

#### Embed Markdown in HTML

Drop some markdown in your html, and it will render nicely

```html
<!-- Some random HTML file-->
<div>
{% markdown %}

## That's right folks!

Markdown in your `HTML`!

- Any template
- Any time

{% endmarkdown %}
</div>
```

#### Convert includes with markdown 

Correctly render markdown files which are included in an HTML page.

```html
<!-- Another random HTML file-->

<div>
{% markdown %}{% include coolcat.md %}{% endmarkdown %}
</div>
```

That's pretty much it. Have fun!

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
