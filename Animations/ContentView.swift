//
//  ContentView.swift
//  Animations
//
//  Created by Louis Mille on 11/07/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var animationCount = 0.0
    
    var body: some View {
        
        Button("Tap me") {
            withAnimation(.interpolatingSpring(stiffness: 5, damping: 1)) {
                animationCount += 360
            }
        }
        .padding(50)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .rotation3DEffect(.degrees(animationCount), axis: (x: 0, y: 1, z: 0))
        
        
        
//        VStack {
//            Stepper("Scale amount", value: $animationCount.animation(
//                .easeInOut(duration: 1)
//                .repeatCount(3, autoreverses: true)
//            ), in: 1...10)
//
//            Spacer()
//
//            Button("Tap me") {
//                animationCount += 1
//            }
//            .padding(50)
//            .background(.red)
//            .foregroundColor(.white)
//            .clipShape(Circle())
//            .scaleEffect(animationCount)
//
//        }
 
        
// Make a pulsating element
//        Button("Tap me") {
//
//        }
//        .padding(50)
//        .background(.red)
//        .foregroundColor(.white)
//        .clipShape(Circle())
//        .overlay(Circle() .stroke(.red) .scaleEffect(animationCount) .opacity(2 - animationCount) .animation(.easeInOut(duration: 1) .repeatForever(autoreverses: false) , value: animationCount))
//        .onAppear {
//            animationCount = 2
//        }
        
        
        
// Animation variations
//        .scaleEffect(animationCount)
//        .blur(radius: (animationCount - 1) * 3)
//        .animation(.interpolatingSpring(stiffness: 50, damping: 1), value: animationCount)
//        .animation(.default), value: animationCount)
//        .animation(.easeInOut(duration: 2) .delay(1) , value: animationCount)
//        .animation(.easeInOut(duration: 1) .repeatCount(2, autoreverses: true) , value: animationCount)
//        .animation(.easeInOut(duration: 1) .repeatForever(autoreverses: true) , value: animationCount)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
