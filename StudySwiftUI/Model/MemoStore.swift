//
//  MemoStore.swift
//  StudySwiftUI
//
//  Created by devming on 2020/06/30.
//  Copyright © 2020 devming. All rights reserved.
//

import Foundation

/// 메모 목록을 저장하는 클래스
class MemoStore: ObservableObject {
    @Published var list: [Memo]
    
    init() {
        list = [
            Memo(content: "Lorem Ipsum 1"),
            Memo(content: "Lorem Ipsum 2"),
            Memo(content: "Lorem Ipsum 3"),
            Memo(content: "Lorem Ipsum 4")
        ]
    }
    
    func insert(memo: String) {
        list.insert(Memo(content: memo), at: 0)
    }
    
    func update(memo: Memo?, content: String) {
        guard let memo = memo else { return }
        memo.content = content
    }
    
    func delete(memo: Memo) {
        self.list.removeAll { $0 == memo }
    }
    
    func delete(set: IndexSet) {
        for index in set {
            self.list.remove(at: index)
        }
    }
}
