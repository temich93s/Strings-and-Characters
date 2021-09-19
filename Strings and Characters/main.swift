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

//MARK: Индексы строки
print("\n//Индексы строки")

let greeting = "123456789"

//startIndex для доступа позиции первого Character в String
print("\(greeting[greeting.startIndex])") // 1

//endIndex — это позиция после последнего символа в String.
//index(before:) и index(after:) - доступ к индексу до и после указанного индекса
print("\(greeting[greeting.index(before: greeting.endIndex)])") // 9
print("\(greeting[greeting.index(after: greeting.startIndex)])") // 2

// index(_:offsetBy:) - доступ к индексу, расположенного не по соседству с указанным индексом
let index = greeting.index(greeting.startIndex, offsetBy: 7)
print("\(greeting[index])") // 8


for i in greeting.indices {
    print(greeting[i], terminator: " ")
}

//MARK: Добавление и удаление
print("\n//Добавление и удаление")

//insert(_:at:) - вставить символ в строку по указанному индексу
var someString15 = "hello"
someString15.insert("@", at: someString15.startIndex)
print(someString15)

//insert(contentsOf:at:) - вставить тсроку в другую строку по указанному индексу
someString15.insert(contentsOf: " world", at: someString15.endIndex)
print(someString15)

//remove(at:) - удалить символ из строки по указанному индексу
someString15 = "0123456789"
someString15.remove(at: someString15.startIndex)
print(someString15)

//removeSubrange(_:) - удалить значения по указанному диапазону индексов
someString15.removeSubrange(someString15.index(someString15.startIndex, offsetBy: 5)...someString15.index(someString15.startIndex, offsetBy: 7))
print(someString15) // ( 1(startIndex) + 5(offsetBy) )...(1+7)


//MARK: Подстроки
print("\n//Подстроки")

var someString16 = "123456789"
//.firstIndex(of: "") - возвращает индекс первого элемента совпавшего с символом
let index1 = someString16.firstIndex(of: "6") ?? someString16.endIndex
let someString17 = someString16[..<index1] // someString17 имеет тип Substring
let newString = String(someString17)
print(someString17)


//MARK: Равенство строк и символов
print("\n//Равенство строк и символов")

let someString18 = "a12345"
let someString19 = "a12345"
let someString20 = "b12345"
print(someString18 == someString19)
print(someString18 != someString19)
print(someString18 > someString19)
print(someString18 < someString20)

let someString21 = "caf\u{E9}"
let someString22 = "caf\u{65}\u{301}"
print("caf\u{E9} == caf\u{65}\u{301}, ",someString21 == someString22)

let someString23 = "\u{0040}"
let someString24 = "\u{0041}"
print("\\u{0410} = \u{0410}, \\u{0041} = \u{0041}, \u{0410} == \u{0041}", someString23 == someString24)


//MARK: Равенство префиксов и суффиксов
print("\n//Равенство префиксов и суффиксов")

let romeoAndJuliet = [
 "Act 1 Scene 1: Verona, A public place",
 "Act 1 Scene 2: Capulet's mansion",
 "Act 1 Scene 3: A room in Capulet's mansion",
 "Act 1 Scene 4: A street outside Capulet's mansion",
 "Act 1 Scene 5: The Great Hall in Capulet's mansion",
 "Act 2 Scene 1: Outside Capulet's mansion",
 "Act 2 Scene 2: Capulet's orchard",
 "Act 2 Scene 3: Outside Friar Lawrence's cell",
 "Act 2 Scene 4: A street in Verona",
 "Act 2 Scene 5: Capulet's mansion",
 "Act 2 Scene 6: Friar Lawrence's cell"
 ]

var count = 0

for i in romeoAndJuliet {
    //hasPrefix(_:) - проверка имеет ли строка определенный строковый префикс
    if i.hasPrefix("Act 1") {
        count += 1
    }
}
print("Количество: \"Act 1\": \(count)")

count = 0

for i in romeoAndJuliet {
    //hasSuffix(_:) - проверка имеет ли строка определенный строковый суффикс
    if i.hasSuffix("Capulet's mansion") {
        count += 1
    }
}
print("Количество: \"Capulet's mansion\": \(count)")
