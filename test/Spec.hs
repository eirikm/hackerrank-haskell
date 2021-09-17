{-# LANGUAGE BlockArguments #-}

module Main where

import Test.Hspec
import SolveMeFirst (solveMeFirst)
import ListReplication (listReplication)

main :: IO ()
main = hspec $
    describe "hackerrank" do
        context "SolveMeFirst" do 
            it "test set" do 
                solveMeFirst "2 3" `shouldBe` 5
        context "ListReplication" do 
            it "test set" do 
                listReplication [3 ,1 ,2 ,3 ,4] `shouldBe` [1 ,1 ,1 ,2 ,2 ,2 ,3 ,3 ,3 ,4 ,4 ,4]