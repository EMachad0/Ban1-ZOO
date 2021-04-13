# Trabalho final de BAN

## Zoo BD

### Como Executar

O site foi hosteado no link: https://ban-p2.herokuapp.com/

### Como executar localmente

Sao nescessarios uma maquina com python3 e pip

Basta instalar as biliotecas com o comando:
```
pip3 install --upgrade pip
pip3 install -r requirements.txt
```

Criar um servidor sql e executar o arquivo zoo.sql

Modificar o arquivo notebooks/BD.py substituindo o valor da variavel global 'DATABASE_URL' com a url do servidor (senha e usuario inclusivos na url).

E por fim executar localmente com o comando:
```
gunicorn flaskr.app:app
```
