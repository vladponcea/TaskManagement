//
//  Extensions.swift
//  TaskManagementApp
//
//  Created by Vladut Mihai Poncea on 22.01.2023.
//

import SwiftUI

extension View {
    func hAlign(_ alignment: Alignment) -> some View {
        self
            .frame(maxWidth: .infinity, alignment: alignment)
    }
    
    func vAlign(_ alignment: Alignment) -> some View {
        self
            .frame(maxHeight: .infinity, alignment: alignment)
    }
}


extension Date {
    func dateToString(_ format: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        return formatter.string(from: self)
    }
}

extension Calendar {
    /// - Returns 24 hours in a day
    var hours: [Date] {
        let startOfDay = self.startOfDay(for: Date())
        var hours: [Date] = []
        for index in 0..<24 {
            if let date = self.date(byAdding: .hour, value: index, to: startOfDay) {
                hours.append(date)
            }
        }
        
        return hours
    }
    
    
    /// - Returns current week in array format
    var currentWeek: [WeekDay] {
        guard let firstWeekDay = self.dateInterval(of: .weekOfMonth, for: Date())?.start else {
            return []
        }
        
        var week: [WeekDay] = []
        
        for index in 0..<7 {
            if let day = self.date(byAdding: .day, value: index, to: firstWeekDay) {
                let weekDaySymbol: String = day.dateToString("EEEE")
                let isToday = self.isDateInToday(day)
                week.append(.init(string: weekDaySymbol, date: day, isToday: isToday))
            }
        }
        
        return week
    }
    
    /// - Used to store data of each week day
    struct WeekDay: Identifiable {
        var id: UUID = .init()
        var string: String
        var date: Date
        var isToday: Bool = false
    }
}
