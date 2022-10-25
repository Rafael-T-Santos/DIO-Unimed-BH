class veiculo:
    def __init__(self, cor, placa, numero_rodas):
        self.cor = cor
        self.placa = placa
        self.numero_rodas = numero_rodas

    def ligar_motor(self):
        print("Ligando o motor.")

    def __str__(self):
        #Deixando bonitinho pra saber todos itens da classe
        return f"{self.__class__.__name__}: {', '.join([f'{chave}={valor}' for chave, valor in self.__dict__.items()])}"

class motocicleta(veiculo):
    pass

class carro(veiculo):
    pass

class caminhao(veiculo):
    def __init__(self, cor, placa, numero_rodas, carregado):
        #Super faz eu escolher o init la de cima
        super().__init__(cor, placa, numero_rodas)
        self.carregado = carregado

    def esta_carregado(self):
        print(f"{'Sim' if self.carregado else 'Não'} estou carregado.")

moto = motocicleta('preta','nmn-7985', 2)
moto.ligar_motor()

carro = carro('branco', 'abc-1234', 4)
carro.ligar_motor()

caminhao = caminhao('roxo', 'cbf-5739', 8, False)
caminhao.ligar_motor()
caminhao.esta_carregado()

print(moto)
print(carro)
print(caminhao)