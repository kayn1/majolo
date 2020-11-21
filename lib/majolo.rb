# frozen_string_literal: true

require 'majolo/version'
require 'majolo/worker'

module Majolo
  class Error < StandardError; end

  class << self
    attr_accessor :backend
  end
end

Majolo.backend = Queue.new
