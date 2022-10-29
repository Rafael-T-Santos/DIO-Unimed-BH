class Bicicleta:
    def __init__(self, cor, modelo, ano, valor):
        self.cor = cor
        self.modelo = modelo
        self.ano = ano
        self.valor = valor

    def buzinar(self):
        print('Bi, Biiii!')

    def parar(self):
        print('Parando.')
        print('Bicicleta parada.')

    def correr(self):
        print('Aceleraaaaaaa!')
        print('Correndo muito.')

    def trocar_marcha(self, marcha):
        print(f'Marcha alterada para :{marcha}')
    
    def __str__(self):
        #Deixando bonitinho pra saber todos itens da classe
        return f"{self.__class__.__name__}: {', '.join([f'{chave}={valor}' for chave, valor in self.__dict__.items()])}"


#Criando a bicicleta
bicicleta1 = Bicicleta('Vermelha', 'Caloy', 2022, 600)

#Executando os métodos
bicicleta1.buzinar()
bicicleta1.parar()
bicicleta1.correr()
bicicleta1.trocar_marcha(2)

print(bicicleta1.cor, bicicleta1.modelo, bicicleta1.ano, bicicleta1.valor)

#Esse print é aquele __str__
print(bicicleta1)