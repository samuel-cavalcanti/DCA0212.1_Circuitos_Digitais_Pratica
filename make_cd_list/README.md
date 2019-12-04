# script feito em python para fazer um pdf a partir de imagens


# dependências
- fpdf

Para instalar as dependências :
```bash
pip instal fpdf
```
__OBS:__ A versão python utilizada é a __3.7__

# como utilizar 

- Primeiro  é necessário renomear as fotos ou as imagens de acordo com a ordem desejada por exemplo:  
IMG_20191125_164453345.jpg para 0.jpg  
IMG_20191125_195338809.jpg para 1.jpg  
IMG_20191125_203308374.jpg para 2.jpg  
e assim sucessivamente...  
Saiba que uma uma imagem corresponde a uma página do arquivo .pdf

- Segundo execute o script passando como argumento a pasta com as imagens renomeadas e o nome do arquivo pdf desejado.
  
Exemplo:
```bash
python py_pdf.py lista_circuitos_2 lista2.pdf
```
__OBS:__ A versão python utilizada é a __3.7__

# Curiosidades
Esse script foi utilizado para a criação das listas de circuitos onde foi resolvido as questões no cardeno, depois foi tirado as fotos e renomeado elas, por fim executado o script para criar o arquivo .PDF e submeter a tarefa.