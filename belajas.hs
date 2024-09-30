-- Definisikan typeclass Perbandingan
class Perbandingan a where
    sama :: a -> a -> Bool
    tidakSama :: a -> a -> Bool

-- Definisikan tipe bentukan Kendaraan
data Kendaraan = Mobil | Motor | Sepeda | Pesawat | Perahu

-- Definisikan instance dari typeclass Perbandingan untuk tipe bentukan Kendaraan
instance Perbandingan Kendaraan where
    sama Mobil Mobil     = True
    sama Motor Motor     = True
    sama Sepeda Sepeda   = True
    sama Pesawat Pesawat = True
    sama Perahu Perahu   = True
    sama _ _             = False

    tidakSama a b = not (sama a b)

-- Contoh penggunaan
main :: IO ()
main = do
    let kendaraan1 = Mobil
    let kendaraan2 = Sepeda

    putStrLn $ "Apakah kendaraan1 sama dengan kendaraan2? " ++ show (sama kendaraan1 kendaraan2)
    putStrLn $ "Apakah kendaraan1 tidak sama dengan kendaraan2? " ++ show (tidakSama kendaraan1 kendaraan2)
