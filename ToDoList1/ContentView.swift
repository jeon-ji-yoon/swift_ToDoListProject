//
//  ContentView.swift
//  ToDoList1
//
//  Created by hjins :) on 2021/01/20.
//

import SwiftUI
import Combine

struct ContentView: View {
    @ObservedObject var taskStore = TaskStore()
    @State var newToDo : String = ""
    
    
    var searchBar : some View {
        HStack {
            TextField("Enter in a new tasks", text: self.$newToDo)
            Button(action: self.addNewToDo, label: {
                Text("Add New")
            })
        
        }
    }
    
    func addNewToDo() {
        taskStore.tasks.append(Task(id: String(taskStore.tasks.count + 1), toDoItem: newToDo))
        self.newToDo = "" //add 하고 나서 입력창을 "" 로 초기화시키는구나....
    }
    
    
    
    
    var body: some View {
        NavigationView{
            VStack {
                searchBar.padding()
                List(self.taskStore.tasks) { task in
                    Text(task.toDoItem)
                }.navigationBarTitle("Tasks")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
