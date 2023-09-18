//
//  ContentView.swift
//  JokeTheApp
//
//  Created by Jonas Wåhslén on 2020-11-16.
//

import SwiftUI

struct MainView: View {
    @ObservedObject var TheJokeVM: JokeVM
    
    var body: some View {
        VStack{
            Text("These are jokes").font(.headline).padding()
            
            NavigationView{
                List {
                    ForEach(TheJokeVM.jokes){ aJoke in
                        NavigationLink(destination: TheCompleteJoke(aJoke: aJoke)){
                            AJokeView(aJoke: aJoke)
                        }
                    }
                }
            }
            
            Button(action: { TheJokeVM.action() } ) {
                Text("Give me some new ones")
            }.padding()
        }
    }
}

struct TheCompleteJoke: View {
    var aJoke: JokeModel.aJoke
    
    var body: some View{
        VStack(alignment: .leading){
            Text(aJoke.setup).padding()
            Text(aJoke.punchline).bold().padding()
        }
    }
}

struct AJokeView:View {
    
        var aJoke: JokeModel.aJoke
    
        var body: some View{
            VStack(alignment: .leading){
                Text(aJoke.setup)
            }
        }
}



struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(TheJokeVM: JokeVM())
    }
}
