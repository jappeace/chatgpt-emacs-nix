module main where

open import IO
import Data.Unit.Polymorphic.Base  as ⊤
import IO.Primitive as Prim

main : Prim.IO ⊤.⊤
main = run (putStrLn "Hello, World!")