# frozen_string_literal: true

require_relative 'node'
require_relative 'presenters/simple'

module MerkleTree
  class Tree
    attr_reader :datas, :root_node

    def initialize(
      datas,
      digest: Digest::SHA256,
      printer: Presenters::Simple.new
    )
      @datas = datas
      @printer = printer
      @digest = digest

      compute_nodes(build_leaves_nodes(datas))
    end

    def root
      @root_node&.value
    end

    def height
      depth = 0
      current = @root_node

      while current
        depth += 1

        break unless current.left

        current = current.left
      end

      depth
    end

    def level(index)
      return [] if index > height - 1

      current_nodes = [@root_node]

      i = index
      while i.positive?
        current_nodes = child_nodes_of(current_nodes)
        i -= 1
      end

      current_nodes.map(&:value)
    end

    def print
      @printer.print(@root_node)
    end

    private

    def child_nodes_of(current_nodes)
      current_nodes.flat_map do |current_node|
        [
          current_node&.left,
          current_node&.right
        ]
      end.compact
    end

    def compute_nodes(nodes)
      if nodes.size == 1
        @root_node = nodes[0]
        return
      end

      new_nodes = []

      nodes.each_slice(2) do |left, right|
        new_nodes << build_node(left, right)
      end

      compute_nodes(new_nodes)
    end

    def build_leaves_nodes(leaves)
      leaves.map do |leaf|
        Node.new(leaf, hexdigest: @digest)
      end
    end

    def build_node(left_node, right_node)
      if right_node.nil?
        Node.new(
          left_node.value,
          hexdigest: @digest,
          left: left_node,
          digest: false
        )
      else
        Node.new(
          left_node.value + right_node.value,
          hexdigest: @digest,
          left: left_node,
          right: right_node
        )
      end
    end
  end
end
