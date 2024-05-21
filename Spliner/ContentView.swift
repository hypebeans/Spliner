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
                //TODO: ロゴ作成
                Text("うさぎとちび鳥")
                    .font(.title)
                    .fontWeight(.bold)
                
                Spacer()
                
                //MARK: サンプル順番
                Image("KawaiiUsagi")
                    .resizable()
                    .cornerRadius(30)
                    .aspectRatio(contentMode: .fit)
                    .scaleEffect(0.75)
                    .shadow(color: .black, radius: 50, x: 5, y: 5)
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
