{-# LANGUAGE BlockArguments #-}

module Main where

import FilterArray (filterArray)
import ListReplication (listReplication)
import SolveMeFirst (solveMeFirst)
import Test.Hspec

main :: IO ()
main = hspec $
    describe "hackerrank" do
        context "SolveMeFirst" do
            it "test set" do
                solveMeFirst "2 3" `shouldBe` 5
        context "ListReplication" do
            it "test set" do
                listReplication [3, 1, 2, 3, 4] `shouldBe` [1, 1, 1, 2, 2, 2, 3, 3, 3, 4, 4, 4]
        context "FilterArray" do
            fit "test set" do
                filterArray (3, [10, 8, 9, 2, 7, 5, 1, 3, 0]) `shouldBe` [2, 1, 0]