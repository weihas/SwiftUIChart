//
//  ContentView.swift
//  SwiftUIChart
//
//  Created by WeIHa'S on 2021/12/5.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        Path { path in
            path.move(to: .zero)
            path.addQuadCurve(to: CGPoint(x: 100, y: 100),
                              control: CGPoint(x: 50, y: 50))
        }
        .stroke()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
