import System.Random
import LEDWall

stars :: IO [[Color]]
stars = mapM (\y ->
               mapM (\x ->
                     do a <- randomRIO (0, 255)
                        return $ RGB a a a
                    ) [1..16]
             ) [1..15]

main = runAnimation stars