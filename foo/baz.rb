state = defined?(Foo::Bar) ? 'found' : 'missing'
puts "In baz.rb Foo::Bar is #{state}"

class Foo
  module Baz end
end
