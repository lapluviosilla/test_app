# encoding: utf-8
require File.expand_path(File.join(File.dirname(__FILE__), *%w[.. .. validator]))

module ValidatiousOnRails
  module Validatious
    module Numericality
      class LessThanOrEqualToValidator < ClientSideValidator

        def initialize(validation, options = {})
          name = 'numericality-less-than-or-equal-to'
          super name, options
          self.params = ['count']
          self.message = self.class.generate_message(validation, :key => :less_than_or_equal_to, :count => '{{count}}')
          self.accept_empty = validation.options[:allow_nil]
          self.fn = %{
            value = +value;
            return value <= params[0];
          }
          self.fn.freeze
        end

      end
    end
  end
end