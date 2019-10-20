from random import randint
from app.config import Config
import dbgp.client


class Equation(object):
    NEW = 0
    INCORRECT = 1
    CORRECT = 2

    def __init__(self):
        self.status = self.NEW

    def getAB(self):
        # dbgp.client.brk(host="localhost", port=9000)
        if (self.status == self.NEW):
            self.a = randint(Config.MIN, Config.MAX)
            self.b = randint(Config.MIN, Config.MAX)
        return (self.a, self.b)

    def reset(self):
        self.status = self.NEW  # a, b will get new random values

    def getStatus(self):
        return self.status

    def tryAnswer(self, c):
        if c == self.a * self.b:
            self.status = self.CORRECT
        else:
            self.status = self.INCORRECT
        return self.status


equation = Equation()
