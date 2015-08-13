if !IO.respond_to?(:binread)
  class << IO
    alias :binread :read
  end
end

require 'doc_queue/version'
require 'doc_queue/iterator'
require 'doc_queue/runner'

def module_exists?(name, base = self.class)
   base.const_defined?(name) && base.const_get(name).instance_of?(::Module)
end

if module_exists?(:Jekyll)
  IO.popen(['script/doc-queue'])
end
