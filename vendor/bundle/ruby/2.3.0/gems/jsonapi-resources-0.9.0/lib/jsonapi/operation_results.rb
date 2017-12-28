module JSONAPI
  class OperationResults
    attr_accessor :results
    attr_accessor :meta
    attr_accessor :links

    def initialize
      @results = []
      @has_errors = false
      @meta = {}
      @links = {}
    end

    def add_result(result)
      @has_errors = true if result.is_a?(JSONAPI::ErrorsOperationResult)
      @results.push(result)
    end

    def has_errors?
      @has_errors
    end

    def all_errors
      errors = []
      if @has_errors
        @results.each do |result|
          if result.is_a?(JSONAPI::ErrorsOperationResult)
            errors.concat(result.errors)
          end
        end
      end
      errors
    end
  end
end
