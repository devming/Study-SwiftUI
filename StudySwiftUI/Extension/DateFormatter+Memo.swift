//
//  DateFormatter+Memo.swift
//  StudySwiftUI
//
//  Created by devming on 2020/07/01.
//  Copyright © 2020 devming. All rights reserved.
//

import Foundation

extension DateFormatter {
    static let memoDateFormatter: DateFormatter = {
        let f = DateFormatter()
        f.dateStyle = .long
        f.timeStyle = .none
        f.locale = Locale(identifier: "Ko_kr")
        return f
    }()
}

extension DateFormatter: ObservableObject {
    
}

