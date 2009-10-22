# encoding: utf-8
require File.join(File.dirname(__FILE__), 'validator')

module ValidatiousOnRails
  module Validatious
    class ClientSideValidator < Validator

      def initialize(name, *args)
        super
      end

      # Override default Validator-fn, with default a ClientSideValidator-fn.
      #
      def fn
        (@fn ||= "function(field, value, params) {return true;}").gsub(/[\n\t]/, '')
      end

    end
  end
end