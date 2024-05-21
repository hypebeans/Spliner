//
//  ContentView.swift
//  Spliner
//
//  Created by Jonathan Budiman on 2024/05/21.
//

import SplineRuntime
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ChibiTori()
                
            VStack {
                Text("うさぎとちび鳥")
                    .font(.title)
                    .fontWeight(.bold)
                
                Spacer()
                
                Image("KawaiiUsagi")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .scaleEffect(0.75)
            }
            
            .padding()
        }.ignoresSafeArea(.all)
    }
}

#Preview {
    ContentView()
}

struct ChibiTori: View {
    var body: some View {
        
        let url = URL(string: "https://build.spline.design/hW4zIadefMxR4lsgWudI/scene.splineswift")!

        // // fetching from local
        // let url = Bundle.main.url(forResource: "scene", withExtension: "splineswift")!

        try? SplineView(sceneFileURL: url)
    }
}
