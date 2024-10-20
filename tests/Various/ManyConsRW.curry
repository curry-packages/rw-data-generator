-- This module has been generated by the tool `curry-rw-data`.
-- It contains instances of class `ReadWrite` for all types
-- defined in module `Various.ManyCons`.

{-# OPTIONS_FRONTEND -Wno-incomplete-patterns #-}

module Various.ManyConsRW where

import Various.ManyCons
import RW.Base
import System.IO

instance (ReadWrite a,ReadWrite b) => ReadWrite (MyData a b) where
  readRW strs r0 = (MyData a' b',r2)
    where
      (a',r1) = readRW strs r0
      (b',r2) = readRW strs r1

  showRW params strs0 (MyData a' b') = (strs2,show1 . show2)
    where
      (strs1,show1) = showRW params strs0 a'
      (strs2,show2) = showRW params strs1 b'

  writeRW params h (MyData a' b') strs =
    writeRW params h a' strs >>= writeRW params h b'

  typeOf n = RWType "MyData" [typeOf (get_a n),typeOf (get_b n)]
    where
      get_a :: MyData a' b' -> a'
      get_a _ = failed
      get_b :: MyData a' b' -> b'
      get_b _ = failed

instance ReadWrite MyFew where
  readRW _ ('0' : r0) = (FA,r0)
  readRW _ ('1' : r0) = (FB,r0)
  readRW _ ('2' : r0) = (FC,r0)
  readRW _ ('3' : r0) = (FD,r0)
  readRW _ ('4' : r0) = (FE,r0)
  readRW _ ('5' : r0) = (FF,r0)
  readRW _ ('6' : r0) = (FG,r0)
  readRW _ ('7' : r0) = (FH,r0)
  readRW _ ('8' : r0) = (FI,r0)
  readRW _ ('9' : r0) = (FJ,r0)
  readRW _ ('a' : r0) = (FK,r0)
  readRW _ ('b' : r0) = (FL,r0)
  readRW _ ('c' : r0) = (FM,r0)
  readRW _ ('d' : r0) = (FN,r0)
  readRW _ ('e' : r0) = (FO,r0)
  readRW _ ('f' : r0) = (FP,r0)

  showRW _ strs0 FA = (strs0,showChar '0')
  showRW _ strs0 FB = (strs0,showChar '1')
  showRW _ strs0 FC = (strs0,showChar '2')
  showRW _ strs0 FD = (strs0,showChar '3')
  showRW _ strs0 FE = (strs0,showChar '4')
  showRW _ strs0 FF = (strs0,showChar '5')
  showRW _ strs0 FG = (strs0,showChar '6')
  showRW _ strs0 FH = (strs0,showChar '7')
  showRW _ strs0 FI = (strs0,showChar '8')
  showRW _ strs0 FJ = (strs0,showChar '9')
  showRW _ strs0 FK = (strs0,showChar 'a')
  showRW _ strs0 FL = (strs0,showChar 'b')
  showRW _ strs0 FM = (strs0,showChar 'c')
  showRW _ strs0 FN = (strs0,showChar 'd')
  showRW _ strs0 FO = (strs0,showChar 'e')
  showRW _ strs0 FP = (strs0,showChar 'f')

  writeRW _ h FA strs = hPutChar h '0' >> return strs
  writeRW _ h FB strs = hPutChar h '1' >> return strs
  writeRW _ h FC strs = hPutChar h '2' >> return strs
  writeRW _ h FD strs = hPutChar h '3' >> return strs
  writeRW _ h FE strs = hPutChar h '4' >> return strs
  writeRW _ h FF strs = hPutChar h '5' >> return strs
  writeRW _ h FG strs = hPutChar h '6' >> return strs
  writeRW _ h FH strs = hPutChar h '7' >> return strs
  writeRW _ h FI strs = hPutChar h '8' >> return strs
  writeRW _ h FJ strs = hPutChar h '9' >> return strs
  writeRW _ h FK strs = hPutChar h 'a' >> return strs
  writeRW _ h FL strs = hPutChar h 'b' >> return strs
  writeRW _ h FM strs = hPutChar h 'c' >> return strs
  writeRW _ h FN strs = hPutChar h 'd' >> return strs
  writeRW _ h FO strs = hPutChar h 'e' >> return strs
  writeRW _ h FP strs = hPutChar h 'f' >> return strs

  typeOf _ = monoRWType "MyFew"

instance ReadWrite MyMany where
  readRW _ ('0' : ('0' : r0)) = (A,r0)
  readRW _ ('0' : ('1' : r0)) = (B,r0)
  readRW _ ('0' : ('2' : r0)) = (C,r0)
  readRW _ ('0' : ('3' : r0)) = (D,r0)
  readRW _ ('0' : ('4' : r0)) = (E,r0)
  readRW _ ('0' : ('5' : r0)) = (F,r0)
  readRW _ ('0' : ('6' : r0)) = (G,r0)
  readRW _ ('0' : ('7' : r0)) = (H,r0)
  readRW _ ('0' : ('8' : r0)) = (I,r0)
  readRW _ ('0' : ('9' : r0)) = (J,r0)
  readRW _ ('0' : ('a' : r0)) = (K,r0)
  readRW _ ('0' : ('b' : r0)) = (L,r0)
  readRW _ ('0' : ('c' : r0)) = (M,r0)
  readRW _ ('0' : ('d' : r0)) = (N,r0)
  readRW _ ('0' : ('e' : r0)) = (O,r0)
  readRW _ ('0' : ('f' : r0)) = (P,r0)
  readRW _ ('1' : ('0' : r0)) = (Q,r0)

  showRW _ strs0 A = (strs0,showString "00")
  showRW _ strs0 B = (strs0,showString "01")
  showRW _ strs0 C = (strs0,showString "02")
  showRW _ strs0 D = (strs0,showString "03")
  showRW _ strs0 E = (strs0,showString "04")
  showRW _ strs0 F = (strs0,showString "05")
  showRW _ strs0 G = (strs0,showString "06")
  showRW _ strs0 H = (strs0,showString "07")
  showRW _ strs0 I = (strs0,showString "08")
  showRW _ strs0 J = (strs0,showString "09")
  showRW _ strs0 K = (strs0,showString "0a")
  showRW _ strs0 L = (strs0,showString "0b")
  showRW _ strs0 M = (strs0,showString "0c")
  showRW _ strs0 N = (strs0,showString "0d")
  showRW _ strs0 O = (strs0,showString "0e")
  showRW _ strs0 P = (strs0,showString "0f")
  showRW _ strs0 Q = (strs0,showString "10")

  writeRW _ h A strs = hPutStr h "00" >> return strs
  writeRW _ h B strs = hPutStr h "01" >> return strs
  writeRW _ h C strs = hPutStr h "02" >> return strs
  writeRW _ h D strs = hPutStr h "03" >> return strs
  writeRW _ h E strs = hPutStr h "04" >> return strs
  writeRW _ h F strs = hPutStr h "05" >> return strs
  writeRW _ h G strs = hPutStr h "06" >> return strs
  writeRW _ h H strs = hPutStr h "07" >> return strs
  writeRW _ h I strs = hPutStr h "08" >> return strs
  writeRW _ h J strs = hPutStr h "09" >> return strs
  writeRW _ h K strs = hPutStr h "0a" >> return strs
  writeRW _ h L strs = hPutStr h "0b" >> return strs
  writeRW _ h M strs = hPutStr h "0c" >> return strs
  writeRW _ h N strs = hPutStr h "0d" >> return strs
  writeRW _ h O strs = hPutStr h "0e" >> return strs
  writeRW _ h P strs = hPutStr h "0f" >> return strs
  writeRW _ h Q strs = hPutStr h "10" >> return strs

  typeOf _ = monoRWType "MyMany"
