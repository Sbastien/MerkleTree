# frozen_string_literal: true

require 'digest'

module MerkleTree
  class Node
    attr_reader :value, :left, :right

    def initialize(data, left: nil, right: nil, digest: true, hexdigest:)
      @value = digest ? hexdigest.hexdigest(data) : data
      @left = left
      @right = right
    end
  end
end
