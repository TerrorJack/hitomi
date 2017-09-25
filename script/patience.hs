#!/usr/bin/env stack
-- stack --resolver nightly-2017-09-20 --install-ghc runghc
{-# OPTIONS_GHC -Wall #-}

import Control.Concurrent
import Control.Monad
import System.Environment
import System.Exit
import System.Process

main :: IO ()
main = do
  prog:args <- getArgs
  h <- spawnProcess prog args
  forever $ do
    threadDelay 1024
    putStr " \b"
    r <- getProcessExitCode h
    case r of
      Just c -> exitWith c
      _ -> pure ()
