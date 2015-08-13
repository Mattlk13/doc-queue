if !IO.respond_to?(:binread)
  class << IO
    alias :binread :read
  end
end

require 'doc_queue/version'
require 'doc_queue/iterator'
require 'doc_queue/runner'
