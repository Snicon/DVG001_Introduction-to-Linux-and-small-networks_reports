#! /usr/bin/bash

echo "Kör lab2.sh av Sixten Peterson (25sipe01)..."
echo ""

# Skriver "fil ett" till filett.txt
echo "fil ett" > filett.txt
echo "filett.txt skapad, se innehåll nedan:"
cat filett.txt
echo ""

# Skapar katalogen laboration2
mkdir -v laboration2
echo ""

# Skapar filerna som ska vara i laboration2
echo "fil två" > laboration2/filtvaa.txt
echo "filtvaa.txt skapad, se innehåll nedan:"
cat laboration2/filtvaa.txt
echo ""

echo "fil tre" > laboration2/filtree.txt
echo "filtree.txt skapad, se innehåll nedan:"
cat laboration2/filtree.txt
echo ""

# Skapar katlog-1
mkdir -v laboration2/katalog-1
echo ""

# Skapar filer i katalog-1
cat > laboration2/katalog-1/datafil.txt <<EOF
Kod: A12B3
Kategori: Elektronik
Pris: 599 kr
Lagerstatus: I lager
EOF
echo "datafil.txt skapad, se innehåll nedan:"
cat laboration2/katalog-1/datafil.txt
echo ""

# Skapar katalog-tva
mkdir -v laboration2/katalog-tva
echo ""

# Skapar filer i katalog-tva
cat > laboration2/katalog-tva/datafil.txt <<EOF
Sverige, Svenska
Brasil, Portugês
France, Français
Italia, Italiano
EOF
echo "datafil.txt skapad, se innehåll nedan:"
cat laboration2/katalog-tva/datafil.txt
echo ""

echo "fil fyra" > laboration2/katalog-tva/filfyra.txt
echo "filfyra.txt skapa, se innehåll nedan:"
cat laboration2/katalog-tva/filfyra.txt
echo ""

# Skapar pgm.sh
cat > laboration2/katalog-1/pgm.sh <<'EOF'
#!/usr/bin/bash

# Lagrar antalet rader i variabler
rader_datafil1=$(cat datafil.txt | wc -l)
rader_datafil2=$(cat ../katalog-tva/datafil.txt | wc -l)

# Skriver ut antalet rader i standard output
echo "datafil.txt i katalog-1 har $rader_datafil1 rader."
echo "datafil.txt i katalog-tva har $rader_datafil2 rader."
EOF
echo "pgm.sh skapad, se innehåll nedan:"
cat laboration2/katalog-1/pgm.sh
echo ""

# Justerar filrättigheter
chmod +x laboration2/katalog-1/pgm.sh
echo "Filrättigheter ändrade för pgm.sh, programmet går nu att exekveras fritt (+x)."
