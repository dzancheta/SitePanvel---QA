# Framework-QA
## Automação de testes do projeto Omnipharma


#### Instalando o Framework e seus modulos


- [x] Na pasta de sua preferencia rode o comando. 
```
git clone https://github.com/tigrupodimed/Framework-QA.git
```

- [x] Vá até a pasta raiz do framework: (Ex. cd \desenvolvimento\Framework-QA) 
```
npm install -g
```

- [x] Seu ambiente está instalado. :white_check_mark:



#### Agora vamos preparar o ambiente para rodar os testes (De preferência rode os comandos na pasta raiz do framework). Cada comando em um CMD.

- [x] Web-server para aplicação NodeJS 
```
npm run-script local-webserver
```
- [x] Servidor selenium 

```
selenium-standalone start
```
- [x] Comando Webdriver para rodar um determinado teste ou os testes.
```
wdio --spec .\test\features\login.feature
```

##### OBSERVAÇÕES
- Temporáriamente terá que apagar o conteudo que o PhantomJS deixa de localstorage, para não prejudicar o ciclo de testes com o cache deixado.
Caminho: C:\Users\*USUÁRIO*\AppData\Local\Ofi Labs\PhantomJS

- Para rodar o projeto é preciso do Java instalado. (important)

# :+1: :shipit: