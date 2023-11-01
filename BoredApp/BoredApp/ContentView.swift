//
//  ContentView.swift
//  BoredApp
//
//  Created by Erez Hod on 29/10/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject private var viewModel = ContentViewModel()
    
    var body: some View {
        VStack {
            Text("🥱")
                .font(.system(size: 80.0))

            Text("Are You Bored?")
                .font(.title)
            
            Text(viewModel.activityDescription)
                .padding()

            Button("Generate Activity") {
                viewModel.generateActivity()
            }
            .buttonStyle(.borderedProminent)
            .disabled(viewModel.isLoading)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
