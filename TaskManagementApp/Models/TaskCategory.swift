//
//  TaskCategory.swift
//  TaskManagementApp
//
//  Created by Vladut Mihai Poncea on 22.01.2023.
//

import SwiftUI

// MARK: - Task Category Enum with Color
enum Category: String, CaseIterable {
    case general = "General"
    case bug = "Bug"
    case idea = "Idea"
    case modifiers = "Modifiers"
    case challenge = "Challenge"
    case coding = "Coding"
    
    var color: Color {
        switch self {
        case .general:
            return .gray
        case .bug:
            return .green
        case .idea:
            return .pink
        case .modifiers:
            return .blue
        case .challenge:
            return .purple
        case .coding:
            return .brown
        }
    }
}
