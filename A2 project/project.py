import sys
import random

class Sweeping():
    def __init__(self,row=8,line=8,numb=15):
        self.row = row
        self.line = row
        self.numb = numb
        self.xy_list = [[0 for i in range(self.line)] for i in range(self.row)]

    def initData(self):
        self.xy_list = [[0 for i in range(self.line)] for i in range(self.row)]
        numb = self.numb
        while numb >0:
            num_x = random.randint(0,self.row-1)
            num_y = random.randint(0,self.line-1)
            if self.xy_list[num_x][num_y]==0:
                self.xy_list[num_x][num_y]=1
                numb= numb-1

    def clear(self,x,y):
        pos = self.xy_list[x][y]
        if pos == 0:
            self.xy
        
        
