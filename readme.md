## Para correr este ficheiro de configurações Git
```
bash ./configurationsGit.sh
```

## Para correr este ficheiro para <u>gerar um projeto React</u> com as configurações personalizadas
```
bash ./configurationsGit.sh
```

### Mudanças a nivel local, so do projeto
```
git config --local
```

### Mudanças a nivel do sistema, para todos os utilizadores
``` 
git config --system
```


### Mudanças a nivel do utilizador, para todos os projetos do utilizador
```
git config --global core.editor code
```
### Mudanças no .gitconfig file
- Mudar para abrir com o vscode
- Alterado para enviar as Tags
- Mudar para por defeito colocar a main como default branch

### Atalhos no .gitconfig file
- **git c "texto a enviar com o commit"**, para fazer adição de todos os ficheiros e fazer o commit

- **git s**, para fazer o status resumido
-  **git l**, para fazer o log personalizado
-  **git ament**, para colocar o commit no commit anterior
-  **git count test**, para fazer a contagem dos commits de cada tipo(test, feat, fix, chore, docs)
    - test -> do tipo testes
    - feat -> do tipo nova feature
    - fix -> do tipo resoluçao de problemas
    - chore -> do tipo adicionar bibliotecas
    - docs -> do tipo adicionar documentação
    - ex: git count test
    - mais informação em [link para conventionalcommits.org!](https://www.conventionalcommits.org)
 
-  **git tag -a "1.0.1" -m "1.0.1"**, para fazer tags anotadas, determinar a versão , vai para o servidor git
