//
//  DataStore.swift
//  ToDoList1
//
//  Created by hjins :) on 2021/01/20.
//

import Foundation
import SwiftUI
import Combine

struct Task : Identifiable {
    var id = String()
    var toDoItem = String()
}

class TaskStore : ObservableObject {
    @Published var tasks = [Task]()
}
