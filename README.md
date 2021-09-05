🔥 TUTORIAL POINTING VPS:

Cara Pointingnya:

1. Install script di VPS AWS:

echo "1" > /proc/sys/net/ipv4/ip_forward; wget -O /usr/bin/point 'https://raw.githubusercontent.com/syfqsamvpn/pointing/main/point.sh'; chmod +x /usr/bin/point; point

2. Pilih menu Create, masukan port yang terbuka di AWS,

Range 2 - 65335 tapi jangan port yang dah digunakan di AWS itu sendiri.

Contoh memakai port 234 (enter)

3. Masukan IP VPS OVH (enter)

4. Masukan port VPS OVH yang sudah digunakan. Terpulang nak guna method apa. Maxis port 80 untuk v2ray ntls. So saya enter port VPS OVH yang vmess iaitu port 80 (enter)

5. Done , exit

Untuk menjalankan perintah script poiting menggunakan command point
