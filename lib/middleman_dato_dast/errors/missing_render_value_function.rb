module MiddlemanDatoDast
  module Errors
    class MissingRenderValueFunction < StandardError
      MESSAGE = <<~MSG.strip
        A structure type of 'value' requires a render value function.

        The following block configuration is invalid:
      MSG

      def initialize(item_type)
        super(MESSAGE + " " + item_type)
      end
    end
  end
end
