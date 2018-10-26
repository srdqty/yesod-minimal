{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE QuasiQuotes           #-}
{-# LANGUAGE TemplateHaskell       #-}
{-# LANGUAGE TypeFamilies          #-}

module Minimal where

import Data.Text (Text)
import Yesod.Core
    ( mkYesodDispatch
    , warp
    )
import MinimalResources

mkYesodDispatch "Minimal" resourcesMinimal

getRootR :: Handler Text
getRootR = pure "Hello, world!"

main :: IO ()
main = warp 3000 Minimal
