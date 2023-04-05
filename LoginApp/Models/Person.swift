//
//  Person.swift
//  LoginApp
//
//  Created by Alex on 04.04.2023.
//

struct User {
    let userName = "Alex"
    let password = "Pass"
    let person: Person
    
    static func getUser() -> User {
        User(person: Person())
    }
}

struct Person {
    let photo = "photo"
    let firstName = "Alex"
    let lastName = "Zhulai"
    let age = "33"
    let hobbies = "Videogames, basketbol, guitars"
    let maritalStatus = "Married"
    let biography = """
Hi! Glad to welcome you to my app, I want to express my gratitude for the information you share with us in your lectures, and most importantly, how you do it! I believe that this IT marathon will end up being productive for many of us!
If you want, I'll tell you a little bit about myself. My name is Alexander, I live in Argentina, in my previous life I was an engineer at 'Lukoil' deep in the north of Russia, and I can still remember how I opened Vasily Usov's book on my computer an hour before work time ended, and read about the basics of Swift programming, and, like everyone at my age, was afraid to make a step towards the new. Now I'm listening to your lectures from the opposite side of the planet and firmly believe to go this way!
I'm also a fan of Tolkien's work, love the Star Wars universe (except for the last three misunderstandings, not counting Rogue One, it's okay :)).
"""
}

//enum Hobby {
//    case sport
//    case films
//    case music
//
//    var definition: String {
//        switch self {
//        case .sport:
//            return "Basketball"
//        case .films:
//            return "Lord of the Rings and Star Wars"
//        case .music:
//            return "60-90's Rock music"
//        }
//    }
//}
