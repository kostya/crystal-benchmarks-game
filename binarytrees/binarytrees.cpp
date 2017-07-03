// The Computer Language Benchmarks Game
// http://benchmarksgame.alioth.debian.org/

// Contributed by Akzhan Abdulin.
// Based on the Java program from Heikki Salokanto, Chandra Sekar, Mike Krüger.

#include <algorithm>
#include <iostream>
#include <memory>
#include <sstream>

using namespace std;

class TreeNode {
  int item;
  unique_ptr<TreeNode> left;
  unique_ptr<TreeNode> right;

public:
  TreeNode(int anItem, int depth) : item(anItem) {
    if (depth > 0) {
      left = std::unique_ptr<TreeNode>(new TreeNode(2 * item - 1, depth - 1));
      right = std::unique_ptr<TreeNode>(new TreeNode(2 * item, depth - 1));
    }
  }

  int check() {
    if (left == nullptr) {
      return item;
    }
    return left->check() - right->check() + item;
  }

  static unique_ptr<TreeNode> create(int item, int depth) {
    return std::unique_ptr<TreeNode>(new TreeNode(item, depth - 1));
  }
};

int main(int, char *argv[]) {
  cout << "stuk4" << endl;

  auto n = 0;
  istringstream(argv[1]) >> n;

  auto min_depth = 4;
  auto max_depth = max(min_depth + 2, n);

  int stretch_depth = max_depth + 1;

  auto stretch_tree = TreeNode::create(0, stretch_depth);
  auto check = stretch_tree->check();
  cout << "stretch tree of depth " << (max_depth + 1) << "\t check: " << check
       << endl;

  auto long_lived_tree = TreeNode::create(0, max_depth);

  for (auto depth = min_depth; depth <= max_depth; depth += 2) {
    auto iterations = 1 << (max_depth - depth + min_depth);
    auto check = 0;

    for (auto i = 1; i <= iterations; i++) {
      check += TreeNode::create(i, depth)->check();
      check += TreeNode::create(-i, depth)->check();
    }
    cout << (iterations << 1) << "\t trees of depth " << depth
         << "\t check: " << check << endl;
  }

  cout << "long lived tree of depth " << max_depth
       << "\t check: " << long_lived_tree->check() << endl;

  return 0;
}
