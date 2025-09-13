# Hash_Crack

Basit bir Bash script'iyle bir hash'in karşılığını (password) bir wordlist kullanarak deneme yöntemiyle (brute-force / wordlist attack) bulmaya çalışır. Script, verilen her kelime için MD5, SHA1, SHA256 ve SHA512 hash'lerini hesaplar ve eşleşme olursa sonucu yazdırır.

> Bu araç eğitim amaçlıdır. Yalnızca izniniz olan veriler üzerinde kullanın.
> Sadece sahip olduğunuz veya açıkça izin verildiği ortamlarda kullanın.
> İzinsiz kullanım yasalara aykırıdır; bu repo sahibi bu tür kullanımdan sorumlu tutulamaz.

## Gereksinimler
- Linux/Unix ortamı (bash)
- `md5sum`, `sha1sum`, `sha256sum`, `sha512sum` (çoğu dağıtımda yüklüdür)
- Bir wordlist (her satır bir olası parola içerir)

## Dosyalar
- `Hash_Crack.sh` 
- `LICENSE` 
- `README.md` 
- `example.txt` 

## Çalıştırılabilir Yapma
Script'i indirdikten sonra çalıştırılabilir hale getirmek için terminalde repo dizininde şu komutu çalıştır:

```bash
chmod +x Hash_Crack.sh
```
##Kullanım
```bash
./Hash_Crack.sh <hash> <wordlist>
