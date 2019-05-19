class SetAttributes
  module DataSource
    class Hash
      attr_reader :data
      attr_reader :attribute_map

      def initialize(data, attribute_map)
        @data = data
        @attribute_map = attribute_map
      end

      def self.build(data, mapping=nil)
        mapping ||= data.keys

        attribute_map = SetAttributes::Map.build(mapping)

        new(data, attribute_map)
      end

      def get_value(attribute)
        source_attribute = attribute_map[attribute]
        data[source_attribute]
      end
    end
  end
end
