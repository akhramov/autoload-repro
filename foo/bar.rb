state = defined?(Foo::Bar) ? 'found' : 'missing'
puts "In bar.rb Foo::Bar is #{state}"

class Foo
  module Bar end
end
