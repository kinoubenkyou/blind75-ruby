# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @param {TreeNode} p
# @param {TreeNode} q
# @return {TreeNode}
def lowest_common_ancestor(root, p, q)
  while true
    if root == p || root == q
      return root
    elsif root.val > p.val && root.val > q.val
      root = root.left
    elsif root.val < p.val && root.val < q.val
      root = root.right
    else
      return root
    end
  end
end
