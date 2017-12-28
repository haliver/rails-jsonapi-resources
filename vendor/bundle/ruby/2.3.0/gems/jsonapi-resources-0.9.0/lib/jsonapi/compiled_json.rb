module JSONAPI
  class CompiledJson
    def self.compile(h)
      new(JSON.generate(h), h)
    end

    def self.of(obj)
      case obj
        when NilClass then nil
        when CompiledJson then obj
        when String then CompiledJson.new(obj)
        when Hash then CompiledJson.compile(obj)
        else raise "Can't figure out how to turn #{obj.inspect} into CompiledJson"
      end
    end

    def initialize(json, h = nil)
      @json = json
      @h = h
    end

    def to_json(*args)
      @json
    end

    def to_s
      @json
    end

    def to_h
      @h ||= JSON.parse(@json)
    end

    undef_method :as_json
  end
end
