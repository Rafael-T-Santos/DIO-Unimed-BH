class animal:
    def __init__(self, numero_patas):
        self.numero_patas = numero_patas

    def __str__(self):
        #Deixando bonitinho pra saber todos itens da classe
        return f"{self.__class__.__name__}: {', '.join([f'{chave}={valor}' for chave, valor in self.__dict__.items()])}"

class ave(animal):
    #o kw herda o numero_patas da classe original para que nao fique repetindo
    def __init__(self, cor_bico, **kw):
        super().__init__(**kw)
        self.cor_bico = cor_bico

class mamifero(animal):
    def __init__(self, cor_pelo, **kw):
        super().__init__(**kw)
        self.cor_pelo = cor_pelo

class cachorro(mamifero):
    pass

class gato(mamifero):
    pass

class leao(mamifero):
    pass

class ornitorrinco(mamifero, ave):
    def __init__(self, cor_pelo, cor_bico, numero_patas):
        #Mostra a ordem que está sendo executada o mro, a ordem de execução dos metodos
        print((ornitorrinco.__mro__))
        super().__init__(cor_pelo=cor_pelo, cor_bico=cor_bico, numero_patas=numero_patas)

gato = gato(numero_patas = 4, cor_pelo = 'preto')
print(gato)

ornitorrinco = ornitorrinco(numero_patas = 4, cor_pelo = 'marrom', cor_bico = 'laranja')
print(ornitorrinco)