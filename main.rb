# frozen_string_literal: true

require_relative 'lib/merkle_tree/tree'

def createMerkleTree(datas)
  MerkleTree::Tree.new(datas)
end

merkle_tree = createMerkleTree(['input 1', 'input 2', 'input 3', 'input 4', 'input 5'])
merkle_tree.print
# pp merkle_tree.root_node
# pp merkle_tree.root
# pp merkle_tree.height
# pp merkle_tree.level(2)
