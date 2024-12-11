//
//  ContentView.swift
//  Part8
//
//  Created by silicagel on 2024/12/11.
//

import SwiftUI

struct ContentView: View {
    @State var count = 0
    @State var isShowContentView2 = false
    
    var body: some View {
        NavigationStack {
            VStack{
                HStack {
                    Button("-") {
                        count -= 1
                    }
                    Text("Counter: \(count)")
                    Button("+") {
                        count += 1
                    }
                }
                .padding()
                Button("ContentView2へ") {
                    isShowContentView2 = true
                }
            }
            .font(.title)
            .sheet(isPresented: $isShowContentView2) {
                ContentView2(tenCount: $count)
            }
        }
        
    }
}
struct ContentView2: View {
    @Binding var tenCount: Int

    var body: some View {
        Button("+10") {
            tenCount += 10
        }
    }
}

//#Preview {
//    ContentView2()
//}

#Preview {
    ContentView()
}
