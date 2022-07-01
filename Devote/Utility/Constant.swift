//
//  Constant.swift
//  Devote
//
//  Created by Alex on 28/06/2022.
//

import SwiftUI

// MARK: - Formatter

let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()

// MARK: - UI

var backgroundGradient: LinearGradient = {
    return LinearGradient(gradient: Gradient(colors: [.pink, .blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
}()

// MARK: - UX

let feedback = UINotificationFeedbackGenerator()
