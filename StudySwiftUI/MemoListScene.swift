//
//  MemoListScene.swift
//  StudySwiftUI
//
//  Created by devming on 2020/06/30.
//  Copyright © 2020 devming. All rights reserved.
//

import SwiftUI

struct MemoListScene: View {
    @EnvironmentObject var store: MemoStore
    @EnvironmentObject var formatter: DateFormatter
    
    var body: some View {
        NavigationView {
            List(store.list) { memo in
                VStack(alignment: .leading) {
                    Text(memo.content)
                        .font(.body)
                        .lineLimit(1)
                    
                    Text("\(memo.insertDate, formatter: self.formatter)")
                        .font(.caption)
                        .foregroundColor(Color(UIColor.secondaryLabel))
                }
            }
            .navigationBarTitle("내 메모")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MemoListScene()
            .environmentObject(MemoStore())
            .environmentObject(DateFormatter.memoDateFormatter)
    }
}
