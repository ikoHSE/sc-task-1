module Task
  ( regroup,
    safeHead,
    safeLast,
    withoutLast,
    indexed,
    alternating,
    constructTree,
    leftmost,
    rightmost,
    treeSum,
    insert,
    insertAll,
  )
where

import Numeric.Natural

-- Implement a function which regroups a nested tuple as the types would suggest.
--
-- >>> regroup (8, ("Hello", True))
-- ("Hello", 8, True)
regroup :: (a, (b, c)) -> (b, a, c)
regroup = undefined

-- Implement a function that returns the first element of a list, if there is one.
-- Hint: `Maybe a` is already defined as so:
--
--   data Maybe a = Just a | Nothing
--
-- If the list has any elements return `Just` the first element, else return `Nothing`.
--
-- >>> safeHead [1, 2, 3]
-- Just 1
--
-- >>> safeHead []
-- Nothing
safeHead :: [a] -> Maybe a
safeHead = undefined

-- Same as `safeHead`, but returns the last element.
--
-- >>> safeLast [1, 2, 3]
-- Just 3
--
-- >>> safeLast []
-- Nothing
safeLast :: [a] -> Maybe a
safeLast = undefined

-- Returns the same list without the last element.
--
-- >>> withoutLast [1, 2, 3, 4]
-- [1, 2, 3]
--
-- >>> withoutLast []
-- []
withoutLast :: [a] -> [a]
withoutLast = undefined

-- Returns the element at a given index if there is one.
-- Otherwise, return Nothing.
--
-- >>> indexed 2 [7, 6, 5, 4]
-- Just 5
--
-- >>> indexed 8 [6, 5, 4]
-- Nothing
indexed :: Natural -> [a] -> Maybe a
indexed = undefined

-- Is an infinite list, alternating the sign of every other element.
--
-- >>> alternating
-- [1, -2, 3, -4, 5, -6, ...
alternating :: [Integer]
alternating = undefined

-- Define a binary tree structure.
--
-- Hint: a tree is either the end of the tree (a node with no elements)
--   or a node contains an element, with two branches coming off of it.
data Tree a -- complete the implementation
  deriving (Show, Eq)

-- Constructs a tree from the given elements.
-- The first element is the root of the tree and the rest of the elements
-- are the alternating left and right children.
--
-- >>> constructTree [1, 2, 3]
--    1
--   / \
--  2   3
--
-- >>> constructTree [1, 2, 3, 4, 5, 6]
--         1
--        / \
--      2     3
--     / \   /
--    4   6 5
--
-- So every recursive step should look something like this:
-- [c, l, r, l, r, l, r, ...
--         c
--        / \
--      l     r
--     / \   / \
--    l   l r   r
--   .............
constructTree :: [a] -> Tree a
constructTree = undefined

-- Returns the leftmost element of the given tree.
--
-- For this tree the result should be 2:
--    1
--   / \
--  2   3
--
-- For this tree the result should be 4:
--         1
--        / \
--      2     3
--     / \   /
--    4   6 5
leftmost :: Tree a -> Maybe a
leftmost = undefined

-- Returns the rightmost element of the given tree.
--
-- For this tree the result should be 3:
--    1
--   / \
--  2   3
--
-- For this tree the result should be 3:
--         1
--        / \
--      2     3
--     / \   /
--    4   6 5
rightmost :: Tree a -> Maybe a
rightmost = undefined

-- Returns the sum of all elements in the tree
--
-- For this tree the result should be 6:
--    1
--   / \
--  2   3
--
-- For this tree the result should be 21:
--         1
--        / \
--      2     3
--     / \   /
--    4   6 5
treeSum :: Tree Integer -> Integer
treeSum = undefined

-- Insert the given integer into the tree, maintaining this property:
--   For every node in the tree all elements in the left subtree should be
--   smaller than the node element and all elements in the right subtree
--   should be greater or equal to the node element.
--
--    a      forall e in b. e < a
--   / \
--  b   c    forall e in c. a >= e
--
-- Assume that the input tree already satisfies the property.
--
-- So given the number 5 as input and this tree:
--    2
--   / \
--  1   3
-- the function should produce this tree:
--    2
--   / \
--  1   3
--       \
--        5
--
-- And given this the number 2 as input and this tree:
--          7
--        /   \
--      2       9
--     / \     /
--    1   5   8
-- the function should produce this tree:
--          7
--        /   \
--      2       9
--     / \     /
--    1   2   8
--         \
--          5
insert :: Integer -> Tree Integer -> Tree Integer
insert = undefined

-- Insert all integers from the list into the given tree using the insert
-- function defined above.
--
-- >>> insertAll [1, 2, 3]
-- 1
--  \
--   2
--    \
--     3
--
-- >>> insertAll [2, 3, 1]
--    2
--   / \
--  1   3
--
-- >>> insertAll [3, 2, 1]
--     3
--    /
--   2
--  /
-- 1
--
-- >>> insertAll [8, 8, 10, 8]
-- 8
--  \
--   8
--    \
--     8
--      \
--       10
insertAll :: [Integer] -> Tree Integer -> Tree Integer
insertAll = undefined
