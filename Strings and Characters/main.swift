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


//MARK: Расширяемые наборы графем
print("\n//Расширяемые наборы графем")

let eAcute: Character = "\u{E9}" // é
let combinedEAcute: Character = "\u{65}\u{301}" // e с последующим '
print("eAcute = \\u{E9} = \(eAcute)")
print("combinedEAcute = \\u{65}\\u{301} = \(combinedEAcute)")

let precomposed: Character = "\u{D55C}"
let decomposed: Character = "\u{1112}\u{1161}\u{11AB}"
print("precomposed \\u{D55C}  = \(precomposed), decomposed \\u{1112}\\u{1161}\\u{11AB} = \(decomposed)")

let enclosedEAcute: Character = "\u{E9}\u{20DD}"
print("enclosedEAcute \\u{E9}\\u{20DD} = \(enclosedEAcute)")

let regionalIndicatorForUS: Character = "\u{1F1FA}\u{1F1F8}"
print("regionalIndicatorForUS \\u{1F1FA}\\u{1F1F8} = \(regionalIndicatorForUS)")


//MARK: Подсчет символов
print("\n//Подсчет символов")

let someString13 = "1234567890"
print("значение someString13 это \(someString13) и он состоит из \(someString13.count) символов")

var someString14 = "cafe"
print("значение someString14 это \(someString14) и он состоит из \(someString14.count) символов")
someString14 += "\u{301}"
print("значение someString14 это \(someString14) и он состоит из \(someString14.count) символов")
