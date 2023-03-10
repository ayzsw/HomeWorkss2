//
//  Market.swift
//  homeworks2
//
//  Created by Аяз on 9/3/23.
//

import Foundation
//Создать класс Товар с параметрами имя, цена и штрих код. Создать 3 класса наследника от класса Товар: Напиток, Быстрые закуски, Шоколад, параметров нет. Создать класс Магазин, в котором есть  в параметре имя магазина и корзина для продуктов, функция добавления товара и функция распечатки чека в следующем виде:
//——Имя Магазина——
//Товары:
//Наименование:            Цена:
//1. Имя товара                его цена
//2. И т.д
//3. ……..
//
//Итого к оплате: общая сумма в сомах
//————————————
//Спасибо за покупку!

class Market{
    var nameMarket: String
    var korzina: [Tovar] = []

    init(nameMarket: String) {
        self.nameMarket = nameMarket
    }
    
    func addProduct(){
        var end = false
        while(!end) {
            print("Добавление товара")
            let inputProduct = Tovar(price: Int(readLine()!)!, nameTovar: readLine()!, barCode: Int(readLine()!)!)
            korzina.append(inputProduct)
            print("Хотели бы добавить еще продукт?")
            let inputReplies = readLine()!
            if inputReplies == "Нет" {
                end = true
            } else {
                end = false
            }
        }
    }
    
    func showInfo() {
        print("\(nameMarket)")
        print("Товары:")
        print("Наименование:            Цена:")
        var totalPrice: Int = 0
        
        for (index, product) in korzina.enumerated() {
            print("\(index + 1) \(product.nameTovar)                   \(product.price)")
            totalPrice = totalPrice + product.price
        }
        print("Итого к оплате: \(totalPrice) сом\n————————————\nСпасибо за покупку!")
    }
}

