module Exceptions
  class DataInvalid < StandardError
    def initialize(errors)
      super(errors)
    end
  end
end
