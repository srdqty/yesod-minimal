{-# LANGUAGE QuasiQuotes           #-}
{-# LANGUAGE TypeFamilies          #-}
{-# LANGUAGE TemplateHaskell       #-}
{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE MultiParamTypeClasses #-}

module Minimal where

import Yesod
import Network.Wai.Handler.Warp (run)
import Data.Text (Text)

data Minimal = Minimal

mkYesod "Minimal" [parseRoutes|
    / RootR GET
|]

instance Yesod Minimal

getRootR :: Handler Text
getRootR = pure "Hello, world!"

main :: IO ()
main = run 3000 =<< toWaiApp Minimal
