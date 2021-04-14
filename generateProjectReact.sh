# Cores para o texto
# Regular Colors
Black='\033[0;30m'        # Black
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
White='\033[0;37m'        # White

NC='\033[0m' # No Color

timestamp=$(date +%s)

nameProject1="new_project_"
nameProject="${nameProject1}${timestamp}"

echo -e " ${Red}Criar pasta do projeto"
echo -e " ${Purple}Criar ficheiro de inicio de projeto"
echo -e " ${Blue}Instalar dependencias${NC}"
# mkdir "$nameProject" && 
npx create-react-app "$nameProject" -y && 
cd "$nameProject" && 
npm init -y &&
npm i -g eslint &&
npm i -D git-commit-msg-linter &&
npm i -D typescript @types/node &&
npm i -D eslint-config-standard-with-typescript@11 eslint-plugin-import eslint-plugin-promise eslint-plugin-standard @typescript-eslint/eslint-plugin eslint-plugin-node --legacy-peer-deps &&
# npm i -D eslint@6 eslint-config-standard-with-typescript@11 eslint-plugin-import eslint-plugin-promise eslint-plugin-standard @typescript-eslint/eslint-plugin eslint-plugin-node --legacy-peer-deps &&
npm i -D lint-staged husky &&
npm i -D jest @types/jest ts-jest --legacy-peer-deps
#npm i -D jest@25 @types/jest ts-jest@25 --legacy-peer-deps


echo -e " ${Yellow}Trocar texto do ficheiro package.json"
# echo -e " ${Red}este comando só esta preparado para Mac Os"
# Trocar text do ficheiro
filename="package.json"
search='echo \\"Error: no test specified\\" && exit 1'
# echo -e " ${search}"
replace="jest"
sed -i '' "s/$search/$replace/g" $filename


# mkdir "src"

echo -e " ${Purple}Criar ficheiro .gtiignore"
touch .gitignore
echo "node_modules" >> .gitignore
echo ".vscode" >> .gitignore
echo "coverage" >> .gitignore


echo -e " ${Green}Criar ficheiro tsconfig.json"
touch tsconfig.json
echo '{' >> tsconfig.json
echo '  "compilerOptions": {' >> tsconfig.json
echo '      "target": "es5",' >> tsconfig.json
echo '      "lib": [' >> tsconfig.json
echo '          "dom",' >> tsconfig.json
echo '          "dom.iterable",' >> tsconfig.json
echo '          "esnext",' >> tsconfig.json
echo '      ],' >> tsconfig.json
echo '      "esModuleInterop": true,' >> tsconfig.json
echo '      "module": "esnext",' >> tsconfig.json
echo '      "moduleResolution": "node",' >> tsconfig.json
echo '      "jsx": "react",' >> tsconfig.json
echo '      "rootDir": "src",' >> tsconfig.json
echo '      "baseUrl": "src",' >> tsconfig.json
echo '      "allowJs": true,' >> tsconfig.json
echo '      "skipLibCheck": true,' >> tsconfig.json
echo '      "allowSyntheticDefaultImports": true,' >> tsconfig.json
echo '      "strict": true,' >> tsconfig.json
echo '      "forceConsistentCasingInFileNames": true,' >> tsconfig.json
echo '      "resolveJsonModule": true,' >> tsconfig.json
# echo '      "isolatedModules": true,' >> tsconfig.json
echo '      "noEmit": true,' >> tsconfig.json
echo '  },' >> tsconfig.json
echo '  "include": [' >> tsconfig.json
echo '      "src"' >> tsconfig.json
echo '  ]' >> tsconfig.json
echo '}' >> tsconfig.json


touch .eslintrc.json
echo '{' >> .eslintrc.json
echo '  "extends": "standard-with-typescript",' >> .eslintrc.json
echo '  "parserOptions": {' >> .eslintrc.json
echo '      "project": ".tsconfig.json"' >> .eslintrc.json
echo '   },' >> .eslintrc.json
echo '   "rules": {' >> .eslintrc.json
echo '      "@typescript-eslint/consistent-type-definitions": "off",' >> .eslintrc.json
echo '      "@typescript-eslint/strict-boolean-expressions": "off"' >> .eslintrc.json
echo '    }' >> .eslintrc.json
echo '}' >> .eslintrc.json


touch .eslintignore
echo "node_modules" >> .eslintignore
echo ".vscode" >> .eslintignore
echo "coverage" >> .eslintignore


touch .lintstagedrc.json
echo '{' >> .lintstagedrc.json
echo '  "*.{ts,tsx}": [' >> .lintstagedrc.json
echo "      \""eslint "'src/**'" --fix\""" >> .lintstagedrc.json
echo '  ]' >> .lintstagedrc.json
echo '}' >> .lintstagedrc.json

touch .huskyrc.json
echo '{' >> .huskyrc.json
echo '  "hooks": {' >> .huskyrc.json
echo '      "pre-commit": "lint-staged"' >> .huskyrc.json
echo '  }' >> .huskyrc.json
echo '}' >> .huskyrc.json


touch jest.config.js
echo "module.exports = {" >> jest.config.js
echo "  roots: ['<rootDir>/src']," >> jest.config.js
echo "  collectCoverageFrom: [" >> jest.config.js
echo "      '<rootDir>/src/**/*.{ts,tsx}'" >> jest.config.js
echo "  ]," >> jest.config.js
echo "  coverageDirectory: 'coverage'," >> jest.config.js
echo "  testEnvironment: 'node'," >> jest.config.js
echo "  transform: {" >> jest.config.js
echo "      '.+\\\\.ts$': 'ts-jest'" >> jest.config.js
echo "  }" >> jest.config.js
echo "}" >> jest.config.js

eslint src/*.js --fix