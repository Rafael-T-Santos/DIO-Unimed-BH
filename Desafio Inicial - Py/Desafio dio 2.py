# DICAS SOBRE PYTHON:
# FUNÇÃO input(): Ela recebe como parâmetro uma String que será visível ao usuário, 
# onde geralmente informa que tipo de informação ele está esperando receber;
# FUNÇÃO print(): Ela é a responsável por imprimir os dados e informar os valores no terminal;
# MÉTODO split(): permite dividir o conteúdo da variável de acordo com as condições especificadas 
# em cada parâmetro da função ou com os valores predefinidos por padrão;

# Abaixo segue um exemplo de código que você pode ou não utilizar
valores = '840 11'.split() 

cachorro = int(valores[0])
participantes = int(valores[1])

#TODO  Calcule a média de cachorros quentes consumidas por participante e imprima o valor com DUAS casas decimais.

media = cachorro / participantes
print(f'{media:.2f}')