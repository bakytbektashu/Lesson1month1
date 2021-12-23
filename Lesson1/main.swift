let firstName: String = "Асан" // Имя
let lastName: String = "Усенбаев" // Фамилия

let birthDate: Int = 1985 // Год рождения
var currentYear: Int = 2021 // Текущий год

// Функция записывающая всю инфу в одну строку
func text(firstName: String, lastName: String, birthDate: Int) -> String {
    let d = currentYear - birthDate // Считывает сколько лет
    let result = firstName + " " + lastName + ", " + String(d) + " " // Обьяденяет все в одну строку кроме "год", "года", "лет"
    let array = [11, 12, 13, 14]
    var g = ""
    if (d == 1 || d % 10 == 1) && !(array.contains(d)) { // Обрабатывает возраст и выясняет правильность написания "год", "года" и "лет"
        g = "год"
    } else if (d >= 2 && d <= 4) || (d % 10 >= 2 && d % 10 <= 4) && !(array.contains(d)) {
        g = "года"
    } else {
        g = "лет"
    }
    return result + g // Обьяденяет текст с "год", "года", "лет"
}

print(text(firstName: firstName, lastName: lastName, birthDate: birthDate)) // Выводит результат
