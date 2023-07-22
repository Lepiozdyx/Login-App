//
//  Person.swift
//  LoginApp
//
//  Created by Alex on 04.04.2023.
//

struct User {
    let userName: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(userName: "User", password: "Pass", person: Person.getPerson())
    }
}

struct Person {
    let photo: String
    let firstName: String
    let lastName: String
    let age: String
    let hobbies: String
    let maritalStatus: String
    let biography: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
    
    static func getPerson() -> Person {
        Person(
            photo: "photo",
            firstName: "John",
            lastName: "Wick",
            age: "46",
            hobbies: "Muscle cars",
            maritalStatus: "Married",
            biography: """
I was born into a Roma family in the settlement of Podgorie, somewhere in the Belarusian SSR (now the Republic of Belarus). At birth he was named Jardani Jovonovich. Orphaned at a young age, i was then adopted by an old friend of my father's who eventually became my mentor. Spent much of his youth in the Mexican town of El Sauzal. Served in the Marine Corps, in which service i earned the name "John Wick." At one point was recruited by Rusca Roma, a New York organized crime group whose leader, a woman known by the alias "The Director", trained me in combat skills. Under the Director's supervision, I was trained as a hitman and learned martial arts skills, tactical driving, escapology, and the use of firearms and other weapons. After leaving the Ruska Roma organization, I was arrested for an unspecified crime and imprisoned. Upon release, I was forced to join an underground criminal underworld operating out of the Continental Hotel chain. Eventually became a member of the Payday syndicate in New York City, gaining a status in the criminal world as a formidable and ruthless hitman known for his determination, commitment and strong-willed qualities. While working in the Russian Crime Syndicate, I earned the nickname "Baba Yaga".
"""
        )
    }
}
