{-# LANGUAGE BlockArguments #-}

module SolveMeFirstSpec (spec) where

import Test.Hspec
import SolveMeFirst (solveMeFirst)

spec :: Spec
spec =
  describe "SolveMeFirst" do 
    it "test set" do 
        solveMeFirst "2 3" `shouldBe` 5
