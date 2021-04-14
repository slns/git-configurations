# Para correr este ficheiro
# bash ./configurations.sh



# cd ~ && mkdir git-alias && cd git-alias

# Mudanças a nivel local, so do projeto
# git config --local

# Mudanças a nivel do sistema, para todos os utilizadores
# git config --system


# Mudanças a nivel do utilizador, para todos os projetos do utilizador
#git config --global core.editor code
echo "Inicio do Editar do .gitconfig"
cd ~
echo "[init]" >> .gitconfig
echo "  defaultBranch = main" >> .gitconfig
echo "[core]" >> .gitconfig
echo "  editor = code --wait" >> .gitconfig
echo "[push]" >> .gitconfig
echo "  followTags = true" >> .gitconfig
echo "[alias]" >> .gitconfig
echo "  c = !git add --all && git commit -m" >> .gitconfig
echo "  s = !git status -s" >> .gitconfig
echo "  l = !git log --pretty=format:'%C(blue)%h%C(red)%d %C(white)%s - %C(cyan)%cn, %C(green)%cr'" >> .gitconfig

# coloca o commit no commit anterior
echo "  amend = !git add --all && git commit --amend --no-edit" >> .gitconfig

# conta os commits de cada tipo(test, feat, fix, chore, docs)
# test -> do tipo testes
# feat -> do tipo nova feature
# fix -> do tipo resoluçao de problemas
# chore -> do tipo adicionar bibliotecas
# docs -> do tipo adicionar documentação
# ex: git count test
echo "  count = !git shortlog -s --grep" >> .gitconfig

# git tags anotadas, determinar a versão , vai para o servidor git
# git tag -a "1.0.1" -m "1.0.1"

echo "Fim do Editar do .gitconfig"