//
//  JokeVM.swift
//  JokeTheApp
//
//  Created by Jonas Willén on 2020-11-16.
//

import SwiftUI

class JokeVM : ObservableObject{
    @Published private var TheJokeModel : JokeModel = JokeModel()
   
    var jokes: Array<JokeModel.aJoke>{
        TheJokeModel.jokes
    }
    
    func action(){
        LoadAJoke()  //  IOHandler.LoadAJoke()
    }
    
    
    // IO Controller

    func LoadAJoke(){
        
        let url = URL(string: "https://v2.jokeapi.dev/joke/programming?amount=1")!
        
        
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let result = try? JSONDecoder().decode(aCodableJoke.self, from: data!) {
                print("test \(result)")
                
                
                DispatchQueue.main.async {
                    self.TheJokeModel.addJoke(_setup: result.setup, _punchline: result.delivery, _id: result.id)
                }
            }else{
                print("not working")
            }
        }
        task.resume()
    }
    
}

struct aCodableJoke : Codable {
    var id : Int
    var setup : String
    var delivery : String
}


