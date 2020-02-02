module Task
  (
  )
where

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
-- >>> wihtoutLast []
-- []
withoutLast :: [a] -> [a]
withoutLast = undefined

-- Is an infinite list, alternating the sign of every other element.
--
-- >>> alternating
-- [1, -2, 3, -4, 5, -6, ...
alternating :: [Integer]
alternating = undefined

-- Define a binary tree structure.
--
-- Hint: a tree is either the end of the tree (a node with no elements)
--   or a node containg an element, with two branches comming off of it.
data Tree a -- complete the implementation

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
