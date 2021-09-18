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


//MARK: Работа с символами
print("\n//Работа с символами")

let someCharacter1 = "!" // по умолчанию тип String
let someCharacter2: Character = "!" // теперь тип Character

let someString6 = "hello"
for i in someString6 {
    print(i, terminator: " ")
}

let someCharacterArray: [Character] = ["h", "e", "l", "l", "o"]
let someString7 = String(someCharacterArray)
print("\n\(someString7)")


//MARK: Конкатенация строк и символов
print("\n//Конкатенация строк и символов")

let someString8 = "hello"
let someString9 = " world"
var someString10 = someString8 + someString9
print(someString10)

someString10 += "🙂"
print(someString10)

someString10.append(someCharacter2)
print(someString10)

let someString11 = """
    строка1
    строка2
    """

let someString12 = """
    строка3
    """

print(someString11 + someString12) //строка3 располагается на второй строке, так как после строка2 нету символа перевода строки, а оператор + ее не добовляет, что бы строка 3 была на третей строке надо добавить /n


//MARK: Интерполяция строк
print("\n//Интерполяция строк")

let numberTwo = 2
print("\(someString10), 10 * 2 = \(numberTwo * 10)")

