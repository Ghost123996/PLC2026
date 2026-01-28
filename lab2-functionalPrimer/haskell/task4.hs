ask :: String -> IO ()
ask prompt =
  do
  putStrLn prompt
  line <- getLine
  if line == ""
    then ask (prompt ++ "!") -- added "!" to prompt on empty input
    else if (line == "quit") then putStrLn("quitting..") --condition added for quitting
    else do
      putStrLn ("you said: " ++ reverse line)
      ask prompt --needed to call ask again to continue the loop


main :: IO ()
main =
  do
  let prompt = "please say something"
  ask prompt