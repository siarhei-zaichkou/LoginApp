struct User {
    let login: String
    let password: String
    let person: Person
}

struct Person {
    let name: String
    let surname: String
    let city: String
    let position: String
    let photo: String
    let info: String
    
    static func getPerson() -> Person {
        Person(
            name: "Джонси",
            surname: "Капитан 'Слива'",
            city: "Гомель",
            position: "Кот",
            photo: "jonesy",
            info: "Всем привет! Меня зовут Джонси. И, как вы уже могли заметить, я - кот.\nЯ был назван в честь великого кота-талисмана команды корабля Ностромо из фильма «Чужой», который вместе с Рипли был одним из двоих выживших после схватки с чужим.\nЯ проживаю в городе Гомель(Беларусь). Очень люблю поспать, ну и, конечно же, сметану.😻\nБольшую часть лета я провожу на даче. Греюсь на солнышке и охочусь на бабочек.\nВам может показаться, что у меня не было таких захватывающих и опасных приключений как у моего знаменитого рыжего тезки.. Но это совсем не так! Однажды, я даже прогнал с дачного участка собаку!!\nТак что не зря ем свой хлеб. С маслом.. И с икрой.. Эх, кажется я проголодался!"
        )
    }
}

extension User {
    static func getUser() -> User {
        User(
            login: "Jonesy",
            password: "Pass",
            person: Person.getPerson()
        )
    }
}
