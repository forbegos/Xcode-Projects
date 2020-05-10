//
//  ContentView.swift
//  WeSplit
//
//  Created by FdO on 5/7/20.
//  Copyright © 2020 Gato Software. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let students = ["Harry", "Hermione", "Ron"]
    // does need to be marked as @State becuase it's declared as a constant.
    @State private var selectedStudent = "Harry"
    // selectedStudent CAN change, so it's declared with @State
    @State private var tapCount = 0
    @State private var name = ""
    var body: some View {
        
        NavigationView {
            

            
            Form {
                Text("Welcome to SwiftUI!")
                
                Section {
                    Text("Hello, World!")
                    Text("Hello, World!")
                    Text("Hello, World!")
                }
                
                Picker("Select your student", selection: $selectedStudent) {
                    //Picker has a two way binding ($) becuase it can be updated with new values
                    ForEach (0..<students.count) {
                        Text(self.students[$0])
                    }
                }
                
                TextField("Enter your name", text:$name)
                
                Button("Tap Count: \(tapCount)") {
                    self.tapCount += 1
                }
                
                ForEach(0 ..< 100) {
                    Text("Row \($0)")
                }
                
            }
            .navigationBarTitle("SwiftUI")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
