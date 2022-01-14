//
//  ContentView.swift
//  Assingnment Notebook
//
//  Created by Student on 1/13/22.
//

import SwiftUI

struct ContentView: View {
    @State private var assignmentItems = [AssignmentItem(course: "Math", description: "Complete Worksheet 17-1", dueDate: Date()), AssignmentItem(course: "Science", description: "Finish Page 6-7", dueDate: Date()), AssignmentItem(course: "History", description: "Read Chapter 10", dueDate: Date())]
    var body: some View {
        NavigationView {
            List {
                ForEach(assignmentItems) {item in
                    HStack {
                        VStack(alignment: .leading) {
                            Text(item.course)
                                .font(.headline)
                            Text(item.description)
                        }
                        Spacer()
                        Text(item.dueDate, style: .date)
                    }
                }
                .onMove(perform: { indices, newOffset in
                    assignmentItems.move(fromOffsets: indices, toOffset: newOffset)
                })
                .onDelete(perform: { indexSet in
                    assignmentItems.remove(atOffsets: indexSet)
                })
            }
            .navigationBarTitle("Courses", displayMode: .inline)
            .navigationBarItems(leading: EditButton())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct AssignmentItem: Identifiable {
    var id = UUID()
    var course = String()
    var description = String()
    var dueDate = Date()
}
