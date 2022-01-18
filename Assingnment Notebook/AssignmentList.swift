//
//  AssignmentList.swift
//  Assingnment Notebook
//
//  Created by Student on 1/18/22.
//

import Foundation

class AssignmentList: ObservableObject {
    @Published var items = [AssignmentItem(course: "Math", description: "Do page 35", dueDate: Date()),
                            AssignmentItem(course: "Science", description: "Finish Lab Questions", dueDate: Date()),
                            AssignmentItem(course: "History", description: "Read Chapter 5", dueDate: Date())]
 }
