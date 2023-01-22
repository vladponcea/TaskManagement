//
//  Task.swift
//  TaskManagementApp
//
//  Created by Vladut Mihai Poncea on 22.01.2023.
//

import SwiftUI

// MARK: - Task Model
struct Task: Identifiable {
    var id: UUID = .init()
    var dateAdded: Date
    var taskName: String
    var taskDescription: String
    var taskCategory: Category
}
