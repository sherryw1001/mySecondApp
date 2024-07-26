//
//  ContentView.swift
//  mySecondApp
//
//  Created by Sherry Wang on 7/26/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var textTitle = "What is your name?"
    @State private var name = ""
    
    var body: some View {
        VStack {
            Text(textTitle)
            TextField("", text: $name)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width:1)
            
            Button("Submit Name"){
                print(name)
                textTitle = "Welcome, \(name)!"
                
                DatePicker(selection: /*@START_MENU_TOKEN@*/.constant(Date())/*@END_MENU_TOKEN@*/, label: { /*@START_MENU_TOKEN@*/Text("Date")/*@END_MENU_TOKEN@*/ })
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.green)
        }
    }
}
    #Preview {
        ContentView()
    }

