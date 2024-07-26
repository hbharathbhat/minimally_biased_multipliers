import numpy as np
import matplotlib.pyplot as plt
import math

class MultError:
    '''
    Class to calculate various errors
    '''

    def __init__(self,n,k):
        self.n=n
        self.k=k

    def getmaxposerror(self):
        return (2**(self.n-self.k)-1)/(2**(self.n-1)+2**(self.n-self.k)-1)

    def getmaxnegerror(self):
        return 2**(1-self.k)

    def getmaxtruncerror(self):
        MPE=self.getmaxposerror()
        MNE=self.getmaxnegerror()
        MTE=max(MPE,MNE)
        return MTE

    def getmaxmulterror(self):
        MPE=self.getmaxposerror()
        MNE=self.getmaxnegerror()

        if MPE > MNE:
            MME=(2*MPE)-(MPE**2)

        if MPE < MNE:
            MME= (2*MNE)+(MNE**2)

        return MME

    def getX(self,L,U,t):
        return L/((2**t)+(((2*U)+1)*(2**(t-self.k+1)))+L)

    def getY(self,L,U,t):
        return (L-(2**(t-self.k+1)))/((2**t)+((2*U)*(2**(t-self.k+1)))+L)

    def getexpectederror(self):
        
        exp_err=0
        for t in range(self.k,self.n):
            for L in range(0,2**(t-self.k+1)):
                for U in range(0,2**(self.k-2)):
                    exp_err=exp_err+self.getX(L,U,t)+self.getY(L,U,t)

        return exp_err/(2**self.n)

    def getabsexpectederror(self):
        
        abs_exp_err=0
        for t in range(self.k,self.n):
            for L in range(0,2**(t-self.k+1)):
                for U in range(0,2**(self.k-2)):
                    abs_exp_err=abs_exp_err+np.abs(self.getX(L,U,t))+np.abs(self.getY(L,U,t))

        return abs_exp_err/(2**self.n)

    def getexpectedmulterror(self):

        exp_err=self.getexpectederror()
        return (2*exp_err) + (exp_err**2)

    def getabsexpectedmulterror(self):

        abs_exp_err=self.getabsexpectederror()
        return (2*abs_exp_err) + (abs_exp_err**2)

if __name__ == "__main__":

    max_error=[]
    max_trunc_error=[]
    exp_error=[]
    abs_exp_error=[]
    klist=[]

    for k in range(4,10):
        error=MultError(n=16,k=k)
        max_error.append(error.getmaxmulterror()*100)
        max_trunc_error.append(error.getmaxtruncerror()*100)
        exp_error.append(error.getexpectedmulterror()*100)
        abs_exp_error.append(error.getabsexpectedmulterror()*100)
        klist.append(k)

    print('For Different k')
    print('Max Error %', max_error)
    print('Max Truncation Error %', max_trunc_error)
    print('Average Error %', exp_error)
    print('Average Abs. Error %', abs_exp_error)

    plt.plot(klist,max_error,'b',label='Max Error %',marker='o')
    plt.plot(klist,max_trunc_error,'r',label='Max Truncation Error %',marker='o')
    plt.plot(klist,exp_error,'y',label='Average Error %',marker='o')
    plt.plot(klist,abs_exp_error,'g',label='Average Abs. Error %',marker='o')
    plt.xticks(klist)
    plt.grid(True)
    plt.xlabel('k')
    plt.ylabel('Inaccuracy %')
    plt.legend()
    plt.show()


    max_error=[]
    max_trunc_error=[]
    exp_error=[]
    abs_exp_error=[]
    nlist=[]

    for n in range(8,18,2):
        error=MultError(n=n,k=6)
        max_error.append(error.getmaxmulterror()*100)
        max_trunc_error.append(error.getmaxtruncerror()*100)
        exp_error.append(error.getexpectedmulterror()*100)
        abs_exp_error.append(error.getabsexpectedmulterror()*100)
        nlist.append(n)

    print('For Different n')
    print('Max Error %', max_error)
    print('Max Truncation Error %', max_trunc_error)
    print('Average Error %', exp_error)
    print('Average Abs. Error %', abs_exp_error)

    plt.plot(nlist,max_error,'b',label='Max Error %',marker='o')
    plt.plot(nlist,max_trunc_error,'r',label='Max Truncation Error %',marker='o')
    plt.plot(nlist,exp_error,'y',label='Average Error %',marker='o')
    plt.plot(nlist,abs_exp_error,'g',label='Average Abs. Error %',marker='o')
    plt.grid(True)
    plt.xlabel('n')
    plt.ylabel('Inaccuracy %')
    plt.legend()
    plt.show()

