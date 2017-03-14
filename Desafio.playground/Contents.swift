//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


func fibonnaci(qtd: Int) -> Int{
    
    if(qtd == 0){
        return 0
    }else if(qtd==1){
        return 1
    }else{
        
        return fibonnaci(qtd: qtd-2) + fibonnaci(qtd: qtd-1)
    }
    
}

for i in 1...8{
    print(fibonnaci(qtd: i))
}

func amostrong (number: Int) -> Bool {
    
    var soma = 0
    var unidade = 0
    var numero = number
    let tam = String(number).characters.count
    
    while numero != 0 {
        unidade = numero % 10
        soma += Int(pow(Double(unidade), Double(tam)))
        numero = numero / 10
    }
    
    if(soma == number){
        return true
    }else{
        return false
    }
    
}

print(amostrong(number: 153))




