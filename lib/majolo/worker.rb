# frozen_string_literal: true

module Majolo
  module Worker
    def self.included(base)
      base.extend(ClassMethods)
    end

    module ClassMethods
      def perform_now(...)
        new.perform(...)
      end
    end

    def perform
      raise NotImplementedError
    end
  end
end
