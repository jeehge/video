//
//  ContentView.swift
//  VideoTest
//
//  Created by JH on 10/1/23.
//

import SwiftUI

struct ContentView: View {
	@ObservedObject var viewModel = YoutubeViewModel()
	
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
			Text("\(viewModel.list.count)")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
