//
//  MemoListScene.swift
//  StudySwiftUI
//
//  Created by devming on 2020/06/30.
//  Copyright © 2020 devming. All rights reserved.
//

import SwiftUI

struct MemoListScene: View {
    var a = 0
    
    var body: some View {
        VStack {
            Text("Nice ~~~ !!")
                .fontWeight(.bold)
            Text("Hello, World!")
                .font(.title)
                .foregroundColor(Color.black)
                .background(Color.yellow)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MemoListScene()
    }
}
