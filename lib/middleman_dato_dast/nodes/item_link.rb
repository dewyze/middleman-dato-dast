module MiddlemanDatoDast
  module Nodes
    class ItemLink < Link
      def item_id
        @node["item"]
      end

      def item
        @links.find { |link| link[:id] == item_id }
      end

      def item_type
        item[:item_type]
      end

      def url_key
        config.item_links[item_type]
      end

      def url
        "/#{item[url_key]}"
      end
    end
  end
end
