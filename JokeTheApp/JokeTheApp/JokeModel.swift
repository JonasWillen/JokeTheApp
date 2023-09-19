//
//  JokeModel.swift
//  JokeTheApp
//
//  Created by Jonas Willén on 2020-11-16.
//

import Foundation

struct JokeModel{
    private (set) var jokes:Array<aJoke>
    
    init(){
        jokes = Array<aJoke>()
        jokes.append(aJoke(setup: "There are 10 types of people in this world...", punchline: "Those who understand binary and those who don't", id: 29))
        jokes.append(aJoke(setup: "Why do C# and Java developers keep breaking their keyboards?", punchline: "Because they use a strongly typed language.", id: 74))
        jokes.append(aJoke(setup: "What was a more important invention than the first telephone?", punchline: "The second one.", id: 276))
    }
    
    mutating func addJoke(_setup: String, _punchline: String, _id: Int){
        jokes.append(aJoke(setup: _setup, punchline: _punchline, id: _id))
    }
    
    struct aJoke: Identifiable{
        var setup: String
        var punchline:String
        var id: Int
    }
}
