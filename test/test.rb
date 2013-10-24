require 'colorator'

`bundle exec jekyll build --trace`

diff = `diff expected.html site/index.html`

if diff.size == 0
  puts "passed".green
else
  puts "failed".red
  puts diff
  abort
end

