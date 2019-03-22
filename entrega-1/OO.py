class Automovel():
    def __init__(self, tipo, qtdRodas):
        self.__tipo = tipo
        self.__qtdRodas = qtdRodas

    def getTipoAutomovel(self):
        return self.__tipo

    def setTipoAutomovel(self, novotipo):
        self.__tipo = novotipo

    def getQtdRodas(self):
        return self.__qtdRodas

    def setQtdRodas(self, quantidade):
        self.__qtdRodas = quantidade


A01 = Automovel("Carro", "4 rodas")
A02 = Automovel("Moto", "2 rodas")

print(A01.getTipoAutomovel() + " possui " + A01.getQtdRodas())
print(A02.getTipoAutomovel() + " possui " + A02.getQtdRodas())