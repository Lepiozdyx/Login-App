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
            firstName: "Alex",
            lastName: "July",
            age: "33",
            hobbies: "Computer technologies",
            maritalStatus: "Married",
            biography: "Some text Some text  Some text  Some text  Some text  Some text  Some text  Some text  Some text  Some text  Some text  Some text  Some text  Some text  Some text  Some text  Some text  Some text  Some text  Some text  Some text  Some text  Some text  Some text  Some text  Some text  Some text  Some text  Some text  Some text "
        )
    }
}
