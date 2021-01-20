//
//  ContentView.swift
//  ToDoList1
//
//  Created by hjins :) on 2021/01/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack {
                List() {
                    Text("Hello")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
