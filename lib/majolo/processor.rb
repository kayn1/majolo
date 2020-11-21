# frozen_string_literal: true

module Majolo
  class Processor
    def self.start(concurency = 1)
      concurency.times { |n| new("Processor #{n}") }
    end

    def initialize(name)
      thread = Thread.new do
        loop do
          payload = Majolo.backend.pop
          worker = payload[:worker]
          worker.new.perform(*payload[:args])
        end
      end

      thread.name = name
    end
  end
end
