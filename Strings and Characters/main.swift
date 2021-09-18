//
//  main.swift
//  Strings and Characters
//
//  Created by 2lup on 18.09.2021.
//

import Foundation

print("Hello, World!")


//MARK: Строковые литералы
print("\n//Строковые литералы")

let someString = "hello world"
print(someString)


//MARK: Многострочные литералы строк
print("\n//Многострочные литералы строк")

let someString2 = """
    строка на 1 строке \
    строка то же на 1 строке (из-за \\)
        строка на 2 строке, но с 4 отступами
    строка на 3 строке
    """
print(someString2)


//MARK: Специальные символы в строковых литералах
print("\n//Специальные символы в строковых литералах")

let dollarSign = "\u{24}"        // $,  Unicode scalar U+0024
let blackHeart = "\u{2665}"      // ♥,  Unicode scalar U+2665
let sparklingHeart = "\u{1F496}" // 💖, Unicode scalar U+1F496
print(dollarSign, blackHeart, sparklingHeart)

print("\0 (нулевой), \\ (слеш), \t (табуляция), \r (возвращение коретки), \" (двойные кавычки), \n (новая строка), \' (одинарные кавычки)")

print("""
    строка 1
    строка 2, кавычка "\""
    строка 3
    """)


//MARK: Расширенные разделители строк
print("\n//Расширенные разделители строк")

print(#"\t (табуляция1), \#t (табуляция2)"#)


//MARK: Инициализация пустых строк
print("\n//Инициализация пустых строк")

let someString3 = ""
let someString4 = String()

print("someString3.isEmpty - \(someString3.isEmpty ? true : false)")
print("someString4.isEmpty - \(someString4.isEmpty ? true : false)")


//MARK: Изменчивость строк
print("\n//Изменчивость строк")

var someString5 = "hello"
someString5 += " world"
print(someString5)
