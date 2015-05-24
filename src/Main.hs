{-# LANGUAGE OverloadedStrings #-}

import qualified Network.Wai as W
import qualified Network.HTTP.Types.Status as HS
import qualified Network.Wai.Handler.Warp as Warp

main :: IO ()
main = do
    putStrLn "Starting Web Server..."
    -- default warp listens on port 3000
    Warp.runSettings Warp.defaultSettings app


app :: W.Application
app request respond = respond $ W.responseLBS HS.status200 [] "Hello World"
