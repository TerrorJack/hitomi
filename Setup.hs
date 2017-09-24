{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wall #-}

module Main
  ( main
  ) where

import Language.JavaScript.NodeJS.CabalHook

main :: IO ()
main = defaultMainWithEvalServer $ addDependencies [("katex", "^0.8.3")]
