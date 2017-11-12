$: << File.expand_path(__dir__)

class Foo
  autoload :Bar, 'foo/bar'
  autoload :Baz, 'foo/baz'
end

Foo::Baz
Foo::Bar
