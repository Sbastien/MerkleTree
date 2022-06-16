# MerkleTree

Very basic implementation of a Merkle tree in ruby

Run it : `ruby main.rb`

Run specs : `rspec specs/merkle_tree_spec.rb`

Output example :

```console
── 26c15b105c1e0728c3001d3a5ffd5305fdd57f9e6fb2510b2a05f1e63126ffc5
   ├─ 3c0687ded8a55e23ed946e0cf797af4a17e32441a183902792fcf823f04329e3
   │  ├─ 6160e5d4a55806127441e34a2842942ccbe3665c41c8246c00c29296d267c7db
   │  │  ├─ 99d3a91e7e87eb4997107275226155498555e34322ffebe829e79cb7daeca5b9
   │  │  └─ 7788c1f80817d66503a4acf2e279043f3e9d5d9b9ad4d861ac43d763f8eba5e2
   │  └─ c029ad98f2dec6e86ef86f9b59bfb36e0911057e32808d892804278788feeead
   │     ├─ 02df333ca5157d8388c6e5ca660fa7ddde3fdb04f14d49c73e6ea18b1256a637
   │     └─ 0a084dfe5a0a68c2489679390a8eb565ab310e1cdbadd3a3c2177168e0af8f4e
   └─ 0acabdec19426feaeff049d42a9c5a9b8dc9b136aa05fcdc2d5a25f1411ed415
      └─ 0acabdec19426feaeff049d42a9c5a9b8dc9b136aa05fcdc2d5a25f1411ed415
         └─ 0acabdec19426feaeff049d42a9c5a9b8dc9b136aa05fcdc2d5a25f1411ed415
```
