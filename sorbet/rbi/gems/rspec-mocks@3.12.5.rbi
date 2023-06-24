# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `rspec-mocks` gem.
# Please instead update this file by running `bin/tapioca gem rspec-mocks`.

# Share the top-level RSpec namespace, because we are a core supported
# extension.
#
# source://rspec-mocks//lib/rspec/mocks/argument_matchers.rb#6
module RSpec
  class << self
    # source://rspec-core/3.12.2/lib/rspec/core.rb#70
    def clear_examples; end

    # source://rspec-core/3.12.2/lib/rspec/core.rb#85
    def configuration; end

    # source://rspec-core/3.12.2/lib/rspec/core.rb#49
    def configuration=(_arg0); end

    # source://rspec-core/3.12.2/lib/rspec/core.rb#97
    def configure; end

    # source://rspec-core/3.12.2/lib/rspec/core.rb#194
    def const_missing(name); end

    # source://rspec-core/3.12.2/lib/rspec/core/dsl.rb#42
    def context(*args, &example_group_block); end

    # source://rspec-core/3.12.2/lib/rspec/core.rb#122
    def current_example; end

    # source://rspec-core/3.12.2/lib/rspec/core.rb#128
    def current_example=(example); end

    # source://rspec-core/3.12.2/lib/rspec/core.rb#154
    def current_scope; end

    # source://rspec-core/3.12.2/lib/rspec/core.rb#134
    def current_scope=(scope); end

    # source://rspec-core/3.12.2/lib/rspec/core/dsl.rb#42
    def describe(*args, &example_group_block); end

    # source://rspec-core/3.12.2/lib/rspec/core/dsl.rb#42
    def example_group(*args, &example_group_block); end

    # source://rspec-core/3.12.2/lib/rspec/core/dsl.rb#42
    def fcontext(*args, &example_group_block); end

    # source://rspec-core/3.12.2/lib/rspec/core/dsl.rb#42
    def fdescribe(*args, &example_group_block); end

    # source://rspec-core/3.12.2/lib/rspec/core/dsl.rb#42
    def feature(*args, &example_group_block); end

    # source://rspec-core/3.12.2/lib/rspec/core.rb#58
    def reset; end

    # source://rspec-core/3.12.2/lib/rspec/core/shared_example_group.rb#110
    def shared_context(name, *args, &block); end

    # source://rspec-core/3.12.2/lib/rspec/core/shared_example_group.rb#110
    def shared_examples(name, *args, &block); end

    # source://rspec-core/3.12.2/lib/rspec/core/shared_example_group.rb#110
    def shared_examples_for(name, *args, &block); end

    # source://rspec-core/3.12.2/lib/rspec/core.rb#160
    def world; end

    # source://rspec-core/3.12.2/lib/rspec/core.rb#49
    def world=(_arg0); end

    # source://rspec-core/3.12.2/lib/rspec/core/dsl.rb#42
    def xcontext(*args, &example_group_block); end

    # source://rspec-core/3.12.2/lib/rspec/core/dsl.rb#42
    def xdescribe(*args, &example_group_block); end
  end
end

# Contains top-level utility methods. While this contains a few
# public methods, these are not generally meant to be called from
# a test or example. They exist primarily for integration with
# test frameworks (such as rspec-core).
#
# source://rspec-mocks//lib/rspec/mocks/argument_matchers.rb#7
module RSpec::Mocks; end

# ArgumentMatchers are placeholders that you can include in message
# expectations to match arguments against a broader check than simple
# equality.
#
# With the exception of `any_args` and `no_args`, they all match against
# the arg in same position in the argument list.
#
# @see ArgumentListMatcher
#
# source://rspec-mocks//lib/rspec/mocks/argument_matchers.rb#16
module RSpec::Mocks::ArgumentMatchers
  # Matches if `arg.kind_of?(klass)`
  #
  # @example
  #   expect(object).to receive(:message).with(kind_of(Thing))
  #
  # source://rspec-mocks//lib/rspec/mocks/argument_matchers.rb#111
  def a_kind_of(klass); end

  # Matches if `arg.instance_of?(klass)`
  #
  # @example
  #   expect(object).to receive(:message).with(instance_of(Thing))
  #
  # source://rspec-mocks//lib/rspec/mocks/argument_matchers.rb#101
  def an_instance_of(klass); end

  # Acts like an arg splat, matching any number of args at any point in an arg list.
  #
  # @example
  #   expect(object).to receive(:message).with(1, 2, any_args)
  #
  #   # matches any of these:
  #   object.message(1, 2)
  #   object.message(1, 2, 3)
  #   object.message(1, 2, 3, 4)
  #
  # source://rspec-mocks//lib/rspec/mocks/argument_matchers.rb#26
  def any_args; end

  # Matches any argument at all.
  #
  # @example
  #   expect(object).to receive(:message).with(anything)
  #
  # source://rspec-mocks//lib/rspec/mocks/argument_matchers.rb#34
  def anything; end

  # Matches an array that includes the specified items at least once.
  # Ignores duplicates and additional values
  #
  # @example
  #   expect(object).to receive(:message).with(array_including(1,2,3))
  #   expect(object).to receive(:message).with(array_including([1,2,3]))
  #
  # source://rspec-mocks//lib/rspec/mocks/argument_matchers.rb#80
  def array_including(*args); end

  # Matches a boolean value.
  #
  # @example
  #   expect(object).to receive(:message).with(boolean())
  #
  # source://rspec-mocks//lib/rspec/mocks/argument_matchers.rb#59
  def boolean; end

  # Matches if the actual argument responds to the specified messages.
  #
  # @example
  #   expect(object).to receive(:message).with(duck_type(:hello))
  #   expect(object).to receive(:message).with(duck_type(:hello, :goodbye))
  #
  # source://rspec-mocks//lib/rspec/mocks/argument_matchers.rb#51
  def duck_type(*args); end

  # Matches a hash that doesn't include the specified key(s) or key/value.
  #
  # @example
  #   expect(object).to receive(:message).with(hash_excluding(:key => val))
  #   expect(object).to receive(:message).with(hash_excluding(:key))
  #   expect(object).to receive(:message).with(hash_excluding(:key, :key2 => :val2))
  #
  # source://rspec-mocks//lib/rspec/mocks/argument_matchers.rb#91
  def hash_excluding(*args); end

  # Matches a hash that includes the specified key(s) or key/value pairs.
  # Ignores any additional keys.
  #
  # @example
  #   expect(object).to receive(:message).with(hash_including(:key => val))
  #   expect(object).to receive(:message).with(hash_including(:key))
  #   expect(object).to receive(:message).with(hash_including(:key, :key2 => val2))
  #
  # source://rspec-mocks//lib/rspec/mocks/argument_matchers.rb#70
  def hash_including(*args); end

  # Matches a hash that doesn't include the specified key(s) or key/value.
  #
  # @example
  #   expect(object).to receive(:message).with(hash_excluding(:key => val))
  #   expect(object).to receive(:message).with(hash_excluding(:key))
  #   expect(object).to receive(:message).with(hash_excluding(:key, :key2 => :val2))
  #
  # source://rspec-mocks//lib/rspec/mocks/argument_matchers.rb#91
  def hash_not_including(*args); end

  # Matches if `arg.instance_of?(klass)`
  #
  # @example
  #   expect(object).to receive(:message).with(instance_of(Thing))
  #
  # source://rspec-mocks//lib/rspec/mocks/argument_matchers.rb#101
  def instance_of(klass); end

  # Matches if `arg.kind_of?(klass)`
  #
  # @example
  #   expect(object).to receive(:message).with(kind_of(Thing))
  #
  # source://rspec-mocks//lib/rspec/mocks/argument_matchers.rb#111
  def kind_of(klass); end

  # Matches no arguments.
  #
  # @example
  #   expect(object).to receive(:message).with(no_args)
  #
  # source://rspec-mocks//lib/rspec/mocks/argument_matchers.rb#42
  def no_args; end

  class << self
    # @private
    #
    # source://rspec-mocks//lib/rspec/mocks/argument_matchers.rb#118
    def anythingize_lonely_keys(*args); end
  end
end

# @private
#
# source://rspec-mocks//lib/rspec/mocks/argument_matchers.rb#149
class RSpec::Mocks::ArgumentMatchers::AnyArgMatcher < ::RSpec::Mocks::ArgumentMatchers::SingletonMatcher
  # source://rspec-mocks//lib/rspec/mocks/argument_matchers.rb#150
  def ===(_other); end

  # source://rspec-mocks//lib/rspec/mocks/argument_matchers.rb#154
  def description; end
end

# source://rspec-mocks//lib/rspec/mocks/argument_matchers.rb#137
RSpec::Mocks::ArgumentMatchers::AnyArgMatcher::INSTANCE = T.let(T.unsafe(nil), RSpec::Mocks::ArgumentMatchers::AnyArgMatcher)

# @private
#
# source://rspec-mocks//lib/rspec/mocks/argument_matchers.rb#142
class RSpec::Mocks::ArgumentMatchers::AnyArgsMatcher < ::RSpec::Mocks::ArgumentMatchers::SingletonMatcher
  # source://rspec-mocks//lib/rspec/mocks/argument_matchers.rb#143
  def description; end
end

# source://rspec-mocks//lib/rspec/mocks/argument_matchers.rb#137
RSpec::Mocks::ArgumentMatchers::AnyArgsMatcher::INSTANCE = T.let(T.unsafe(nil), RSpec::Mocks::ArgumentMatchers::AnyArgsMatcher)

# @private
#
# source://rspec-mocks//lib/rspec/mocks/argument_matchers.rb#232
class RSpec::Mocks::ArgumentMatchers::ArrayIncludingMatcher
  # @return [ArrayIncludingMatcher] a new instance of ArrayIncludingMatcher
  #
  # source://rspec-mocks//lib/rspec/mocks/argument_matchers.rb#233
  def initialize(expected); end

  # source://rspec-mocks//lib/rspec/mocks/argument_matchers.rb#237
  def ===(actual); end

  # source://rspec-mocks//lib/rspec/mocks/argument_matchers.rb#248
  def description; end

  private

  # source://rspec-mocks//lib/rspec/mocks/argument_matchers.rb#254
  def formatted_expected_values; end
end

# @private
#
# source://rspec-mocks//lib/rspec/mocks/argument_matchers.rb#178
class RSpec::Mocks::ArgumentMatchers::BaseHashMatcher
  # @return [BaseHashMatcher] a new instance of BaseHashMatcher
  #
  # source://rspec-mocks//lib/rspec/mocks/argument_matchers.rb#179
  def initialize(expected); end

  # source://rspec-mocks//lib/rspec/mocks/argument_matchers.rb#183
  def ===(predicate, actual); end

  # source://rspec-mocks//lib/rspec/mocks/argument_matchers.rb#191
  def description(name); end

  private

  # source://rspec-mocks//lib/rspec/mocks/argument_matchers.rb#197
  def formatted_expected_hash; end
end

# @private
#
# source://rspec-mocks//lib/rspec/mocks/argument_matchers.rb#167
class RSpec::Mocks::ArgumentMatchers::BooleanMatcher < ::RSpec::Mocks::ArgumentMatchers::SingletonMatcher
  # source://rspec-mocks//lib/rspec/mocks/argument_matchers.rb#168
  def ===(value); end

  # source://rspec-mocks//lib/rspec/mocks/argument_matchers.rb#172
  def description; end
end

# source://rspec-mocks//lib/rspec/mocks/argument_matchers.rb#137
RSpec::Mocks::ArgumentMatchers::BooleanMatcher::INSTANCE = T.let(T.unsafe(nil), RSpec::Mocks::ArgumentMatchers::BooleanMatcher)

# @private
#
# source://rspec-mocks//lib/rspec/mocks/argument_matchers.rb#262
class RSpec::Mocks::ArgumentMatchers::DuckTypeMatcher
  # @return [DuckTypeMatcher] a new instance of DuckTypeMatcher
  #
  # source://rspec-mocks//lib/rspec/mocks/argument_matchers.rb#263
  def initialize(*methods_to_respond_to); end

  # source://rspec-mocks//lib/rspec/mocks/argument_matchers.rb#267
  def ===(value); end

  # source://rspec-mocks//lib/rspec/mocks/argument_matchers.rb#271
  def description; end
end

# @private
#
# source://rspec-mocks//lib/rspec/mocks/argument_matchers.rb#221
class RSpec::Mocks::ArgumentMatchers::HashExcludingMatcher < ::RSpec::Mocks::ArgumentMatchers::BaseHashMatcher
  # source://rspec-mocks//lib/rspec/mocks/argument_matchers.rb#222
  def ===(actual); end

  # source://rspec-mocks//lib/rspec/mocks/argument_matchers.rb#226
  def description; end
end

# @private
#
# source://rspec-mocks//lib/rspec/mocks/argument_matchers.rb#210
class RSpec::Mocks::ArgumentMatchers::HashIncludingMatcher < ::RSpec::Mocks::ArgumentMatchers::BaseHashMatcher
  # source://rspec-mocks//lib/rspec/mocks/argument_matchers.rb#211
  def ===(actual); end

  # source://rspec-mocks//lib/rspec/mocks/argument_matchers.rb#215
  def description; end
end

# @private
#
# source://rspec-mocks//lib/rspec/mocks/argument_matchers.rb#277
class RSpec::Mocks::ArgumentMatchers::InstanceOf
  # @return [InstanceOf] a new instance of InstanceOf
  #
  # source://rspec-mocks//lib/rspec/mocks/argument_matchers.rb#278
  def initialize(klass); end

  # source://rspec-mocks//lib/rspec/mocks/argument_matchers.rb#282
  def ===(actual); end

  # source://rspec-mocks//lib/rspec/mocks/argument_matchers.rb#286
  def description; end
end

# @private
#
# source://rspec-mocks//lib/rspec/mocks/argument_matchers.rb#292
class RSpec::Mocks::ArgumentMatchers::KindOf
  # @return [KindOf] a new instance of KindOf
  #
  # source://rspec-mocks//lib/rspec/mocks/argument_matchers.rb#293
  def initialize(klass); end

  # source://rspec-mocks//lib/rspec/mocks/argument_matchers.rb#297
  def ===(actual); end

  # source://rspec-mocks//lib/rspec/mocks/argument_matchers.rb#301
  def description; end
end

# @private
#
# source://rspec-mocks//lib/rspec/mocks/argument_matchers.rb#160
class RSpec::Mocks::ArgumentMatchers::NoArgsMatcher < ::RSpec::Mocks::ArgumentMatchers::SingletonMatcher
  # source://rspec-mocks//lib/rspec/mocks/argument_matchers.rb#161
  def description; end
end

# source://rspec-mocks//lib/rspec/mocks/argument_matchers.rb#137
RSpec::Mocks::ArgumentMatchers::NoArgsMatcher::INSTANCE = T.let(T.unsafe(nil), RSpec::Mocks::ArgumentMatchers::NoArgsMatcher)

# Intended to be subclassed by stateless, immutable argument matchers.
# Provides a `<klass name>::INSTANCE` constant for accessing a global
# singleton instance of the matcher. There is no need to construct
# multiple instance since there is no state. It also facilities the
# special case logic we need for some of these matchers, by making it
# easy to do comparisons like: `[klass::INSTANCE] == args` rather than
# `args.count == 1 && klass === args.first`.
#
# @private
#
# source://rspec-mocks//lib/rspec/mocks/argument_matchers.rb#133
class RSpec::Mocks::ArgumentMatchers::SingletonMatcher
  class << self
    # @private
    #
    # source://rspec-mocks//lib/rspec/mocks/argument_matchers.rb#136
    def inherited(subklass); end

    private

    def new(*_arg0); end
  end
end
