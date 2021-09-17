module SolveMeFirstSpec (spec) where

import Test.Hspec
import SolveMeFirst (solveMeFirst')

spec :: Spec
spec =
  describe "SolveMeFirst" do
    it "should work" do
      solveMeFirst' "1 2" `shouldBe` 3

