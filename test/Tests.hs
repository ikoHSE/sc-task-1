module Tests
  ( tests,
  )
where

import Task
import Test.Tasty.Hspec

tests :: Spec
tests = do
  it "safeHead" $ do
    safeHead [1 :: Int, 2, 3] `shouldBe` Just 1
    safeHead [1294 :: Int, 2, 3, 4, 5, 6, 7, 7, 9] `shouldBe` Just 1294
    safeHead [] `shouldBe` (Nothing :: Maybe ())
  it "safeLast" $ do
    safeLast [1 :: Int, 2, 3] `shouldBe` Just 3
    safeLast [1294 :: Int, 2, 3, 4, 5, 6, 7, 7, 9] `shouldBe` Just 9
    safeLast [] `shouldBe` (Nothing :: Maybe ())
  it "withoutLast" $ do
    withoutLast [1 :: Int, 2, 3] `shouldBe` [1, 2]
    withoutLast [1294 :: Int, 2, 3, 4, 5, 6, 7, 7, 9] `shouldBe` [1294, 2, 3, 4, 5, 6, 7, 7]
    withoutLast [] `shouldBe` ([] :: [()])
  it "indexed" $ do
    indexed 2 [1 :: Int, 2, 3] `shouldBe` Just 3
    indexed 0 [1294 :: Int, 2, 3, 4, 5, 6, 7, 7, 9] `shouldBe` Just 1294
    indexed 1080 [1294 :: Int, 2, 3, 4, 5, 6, 7, 7, 9] `shouldBe` Nothing
    indexed 4 [1294 :: Int, 2, 3, 4, 5, 6, 7, 7, 9] `shouldBe` Just 5
    indexed 0 [] `shouldBe` (Nothing :: Maybe ())
    indexed 297 [] `shouldBe` (Nothing :: Maybe ())
  it "alternating" $ do
    take 10 alternating `shouldBe` [1, -2, 3, -4, 5, -6, 7, -8, 9, -10]
    alternating !! 42 `shouldBe` 43
    alternating !! 69 `shouldBe` -70
    alternating !! 420 `shouldBe` 421
