require_relative '../lib/merkle_tree/tree'

RSpec.describe MerkleTree::Tree do
  subject(:tree) { described_class }

  let(:datas) do
    [
      'input 1',
      'input 2',
      'input 3',
      'input 4'
    ]
  end

  it 'creates the tree' do
    result = tree.new(datas)

    expect(result).to be_a( MerkleTree::Tree)
    expect(result.root_node.right).to be_a(MerkleTree::Node)
    expect(result.root_node.left).to be_a(MerkleTree::Node)
  end

  # To fix
  # it 'has correct root hash' do
  #   digest = class_double('Digest::SHA256')

  #   allow(digest).to receive(:hexdigest) do |args|
  #     #
  #   end

  #   # expect(result).to eq(...)
  # end
end
