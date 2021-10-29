//
//  First_ProjectApp.swift
//  Shared
//
//  Created by Shifat Ur Rahman on 20.10.21.
//

import SwiftUI
import ReactiveSwift

@main
struct First_ProjectApp: App {
    @State private var t: TestReactive
    
    init() {
        t = TestReactive(start: 10)
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView(t: $t, intValue: t)
        }
    }
}

class TestReactive: ObservableObject {
    @Published var randomInts: Int
    
    init(start: Int) {
        randomInts = start
    }
    
    func increment() {
        self.randomInts += 1
        print(self.randomInts)
    }
    
    func incrementWithDelay() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: {
            self.randomInts += 1
            print(self.randomInts)
        })
    }
}
