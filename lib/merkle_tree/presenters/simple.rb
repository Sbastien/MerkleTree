# frozen_string_literal: true

module MerkleTree
  module Presenters
    class Simple
      def print(node)
        print_tree(
          node: node,
          indent: '',
          last: true,
          corner_sign: '──'
        )
      end

      def print_tree(node:, indent:, last:, corner_sign:)
        puts(indent + "#{corner_sign} " + node.value)

        indent += last ? '   ' : '│  '

        next_nodes = [node.left, node.right].compact
        next_nodes.each_with_index do |child_node, index|
          is_last = index == 1 || next_nodes.size == 1

          print_tree(
            node: child_node,
            indent: indent,
            last: is_last,
            corner_sign: is_last ? '└─' : '├─'
          )
        end
      end
    end
  end
end
