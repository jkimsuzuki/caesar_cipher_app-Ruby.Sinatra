# typed: strict
# frozen_string_literal: true

module RubyIndexer
  # Represents the visibility scope in a Ruby namespace. This keeps track of whether methods are in a public, private or
  # protected section, and whether they are module functions.
  class VisibilityScope
    class << self
      #: -> instance
      def module_function_scope
        new(module_func: true, visibility: :private)
      end

      #: -> instance
      def public_scope
        new
      end
    end

    #: Symbol
    attr_reader :visibility

    #: bool
    attr_reader :module_func

    #: (?visibility: Symbol, ?module_func: bool) -> void
    def initialize(visibility: :public, module_func: false)
      @visibility = visibility
      @module_func = module_func
    end
  end
end
