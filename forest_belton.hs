
import System.Random

fb_starts     = ["Zygo", "Prepro", "Mutually ", "Lazy "]
fb_middles    = ["histomorphic ", "semi-recursive ", "monadic co-generator ", "tail call transflecting "]
fb_qualifiers = ["quasi-typed ", "union typed ", "non-lambda typed ", "duck typed ", "zermelo franklin typed ", "secretly ML "]
fb_finishadj  = ["eigen-", "trans-", "hapto-", "lepto-", "carne-asado-"]
fb_finishes   = ["matrix.", "combinator.", "comonoid.", "antisecant.", "thunk."]

fb_rand top = getStdRandom $ randomR(1, top)

fb_randl list = do
    idx <- (fb_rand $ length list)
    putStr(list !! (idx - 1))

main = do
    fb_randl fb_starts
    fb_randl fb_middles
    fb_randl fb_qualifiers
    fb_randl fb_finishadj
    fb_randl fb_finishes
    putStrLn ""