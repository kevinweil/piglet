module Piglet
  module Inout
    class Store # :nodoc:
      include StorageTypes
      include Output
    
      def initialize(relation, path, options={})
        @relation, @path, @using = relation, path, options[:using]
      end
    
      def to_s
        str  = super
        str << " INTO '#{@path}'"
        str << " USING #{resolve_load_store_function(@using)}" if @using
        str
      end
    end
  end
end