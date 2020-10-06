#!/bin/bash

cat << EOF

O operador > redireciona e sobrescreve a saida de um comando que deu sucesso

echo "oi" > algo.txt
cat algo.txt
a saida vai ser > oi

----------------------------------------------------------------------------

O operador >> redireciona mas não sobrescreve o que ja existe no arquivo

echo "bla1" >> algo.txt
echo "bla2" >> algo.txt
cat algo.txt
saida > bla1 bla2

-----------------------------------------------------------------------------

O operador 2> redireciona e sobrescreve a saida de erro

ls ThiagoEngraçado.txt 2> erro.txt
cat erro.txt
saida > Arquivo ou diretorio não encontrado

-----------------------------------------------------------------------------

2>>redireciona mas nao sobrescreve a saida de erro padrao

ls ThiagoEngraçado.txt 2>> erro.txt
ls erro1.txt 2>> erro.txt
cat erro.txt
saida > arquivo ou diretorio não encontrado (2x)

----------------------------------------------------------------------------

&> redireciona e sobrescreve a saida padrao independente de ser erro ou não

mv boa.txt ~/bin/null &> s.txt
cat s.txt
saida > arquivo não existe

----------------------------------------------------------------------------

&>> redireciona e não sobrescreve a saida padrao do aquivo

mv boa.txt ~/bin &>> oi.txt
mv oi.txt ~/bin &>> oi.txt
cat oi.txt
saida > arquivo não existe (2x)

----------------------------------------------------------------------------

O operador < redireciona a entrada padrão para um arquivo

bc < operação_matemática("6+2").txt
saida > 8

----------------------------------------------------------------------------


EOF
