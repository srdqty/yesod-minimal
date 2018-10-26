{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE QuasiQuotes           #-}
{-# LANGUAGE TemplateHaskell       #-}
{-# LANGUAGE TypeFamilies          #-}

module MinimalResources where

import Yesod.Core
    ( RenderRoute (..)
    , Yesod
    , mkYesodData
    , parseRoutes
    )

-- | This is my data type. There are many like it, but this one is mine.
data Minimal = Minimal

mkYesodData "Minimal" [parseRoutes|
    / RootR GET
|]

instance Yesod Minimal
