//
//  ContentView.swift
//  Shared
//
//  Created by Shifat Ur Rahman on 20.10.21.
//

import SwiftUI
import ReactiveSwift

struct ContentView: View {
    @Binding var t: TestReactive // Updates Value, but Does not refresh the UI
    @ObservedObject var intValue: TestReactive // Refreshes the UI for every update
    
    var body: some View {
        VStack {
            Button("Example Button", action: {
                t.increment()
                // t.incrementWithDelay()
                print("inside button \(t.randomInts), \(intValue.randomInts)")
            })
            Text("Hello, \(t.randomInts) : Hello, \(intValue.randomInts)")
                .padding()
        }
    }
}
