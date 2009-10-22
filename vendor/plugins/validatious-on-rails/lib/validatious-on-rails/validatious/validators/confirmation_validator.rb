# encoding: utf-8
require File.expand_path(File.join(File.dirname(__FILE__), *%w[.. validator]))

module ValidatiousOnRails
  module Validatious
    class ConfirmationValidator < ClientSideValidator

      def initialize(validation, options = {})
        name = 'confirmation-of'
        super name, options
        self.params = ['field-id']
        self.message = self.class.generate_message(validation)
        self.accept_empty = true
        # Identical to Validatious "confirmation-of" validator, but we want Rails I18n message support, so...
        self.fn = %{
          return value === v2.$f(params[0]).getValue();
        }
        self.fn.freeze
      end

    end
  end
end