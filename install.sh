#!/bin/bash

# Criar pasta caso não exista
mkdir -p $PREFIX/share/mytermuxlib

# Copiar arquivos
cp -r lib/* $PREFIX/share/mytermuxlib/

# Tornar executável
chmod +x $PREFIX/share/mytermuxlib/*

# Criar comando global
cat <<EOF > $PREFIX/bin/minhalib
#!/bin/bash
bash $PREFIX/share/mytermuxlib/meu_script.sh "$@"
EOF

chmod +x $PREFIX/bin/minhalib

echo "Biblioteca instalada! Use o comando: minhalib"
