//
//  main.swift
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

var store = Market(nameMarket: "Globus")
store.addProduct()
store.showInfo()
