module Piglet
  module Field
    class SuffixExpression # :nodoc:
      include Field
    
      def initialize(operator, expression, options=nil)
        options ||= {}
        @operator, @expression = operator, expression
        @type = options[:type] || expression.type
      end
    
      def simple?
        false
      end
    
      def to_s
        "#{parenthesise(@expression)} #{@operator}"
      end
    end
  end
end