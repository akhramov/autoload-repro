## MRI vs Rubinius autoloading

###### Description

Rubinius and MRI handle autoloading differently.
When interpreter loads a file of the autoloaded module, `Module#const_defined?`
returns `false` in MRI, but `true` in Rubinius. Same goes for `defined?`
keyword.

###### Usage

This repository contains reproduction code for the described case.
Just run `foo.rb` using different interpreters.

MRI (ruby 2.4.2p198 (2017-09-14 revision 59899) [x86_64-darwin17]) results:

> % ruby foo.rb
> In baz.rb Foo::Bar is found
> In bar.rb Foo::Bar is missing

Rubinius (rubinius 3.82 (2.3.1 1a98abf9 2017-06-27 4.0.1) [x86_64-darwin17.2.0]) results:

> % ruby foo.rb
> In baz.rb Foo::Bar is found
> In bar.rb Foo::Bar is found
