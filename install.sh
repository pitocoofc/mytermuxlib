#!/bin/bash

mkdir -p $PREFIX/share/mytermuxlib

# Copiar o script da raiz
cp meu_script.sh $PREFIX/share/mytermuxlib/

# Se tiver outros arquivos na lib, copia também
cp -r lib/* $PREFIX/share/mytermuxlib/

chmod +x $PREFIX/share/mytermuxlib/*

cat <<EOF > $PREFIX/bin/minhalib
#!/bin/bash
bash $PREFIX/share/mytermuxlib/meu_script.sh "\$@"
EOF

chmod +x $PREFIX/bin/minhalib

echo "Biblioteca instalada! Use o comando: minhalib"
