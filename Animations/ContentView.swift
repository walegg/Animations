//
//  ContentView.swift
//  Animations
//
//  Created by Louis Mille on 11/07/2023.
//

import SwiftUI

struct CornerRotateModifier: ViewModifier {
    let amount: Double
    let anchor: UnitPoint
    
    func body(content: Content) -> some View {
        content
            .rotationEffect(.degrees(amount), anchor: anchor)
            .clipped()
    }
}

extension AnyTransition {
    static var pivot: AnyTransition {
        .modifier(
            active: CornerRotateModifier(amount: -90, anchor: .topLeading),
            identity: CornerRotateModifier(amount: 0, anchor: .topLeading))
    }
}

struct ContentView: View {
    
    @State private var animationCount = 0.0
    @State private var enabled = false
    @State private var dragAmount = CGSize.zero
    
    let letters = Array("Hello, SwiftUI")
    @State private var isEnabled = false
    
    @State private var isShowingRed = false

    
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.blue)
                .frame(width: 200, height: 200)
            
            if isShowingRed {
                Rectangle()
                    .fill(.red)
                    .frame(width: 200, height: 200)
                    .transition(.pivot)
            }
        }
        .onTapGesture {
            withAnimation {
                isShowingRed.toggle()
            }
        }
        
//        VStack {
//            Button("Tap me") {
//                withAnimation {
//                    isShowingRed.toggle()
//                }
//            }
//
//            if isShowingRed {
//                Rectangle()
//                    .fill(.red)
//                    .frame(width: 200, height: 200)
//                    .transition(.asymmetric(insertion: .scale, removal: .opacity))
//            }
//        }
        
// Animate a string like a snake
//        HStack(spacing: 0) {
//            ForEach(0..<letters.count) { num in
//                Text(String(letters[num]))
//                    .padding(5)
//                    .font(.title)
//                    .background(enabled ? .blue : .red)
//                    .offset(dragAmount)
//                    .animation(.default.delay(Double(num) / 20), value: dragAmount)
//
//            }
//        }
//        .gesture(
//            DragGesture()
//                .onChanged { dragAmount = $0.translation }
//                .onEnded { _ in
//                    dragAmount = .zero
//                    enabled.toggle()
//
//                }
//        )
        
//        LinearGradient(gradient: Gradient(colors: [.yellow, .red]), startPoint: .topLeading, endPoint: .bottomTrailing)
//            .frame(width: 300, height: 200)
//            .clipShape(RoundedRectangle(cornerRadius: 10))
//            .offset(dragAmount)
//            .gesture(
//                DragGesture()
//                    .onChanged { dragAmount = $0.translation }
//                    .onEnded { _ in dragAmount = .zero }
//            )
//        //add a delay to the animation
//            .animation(.spring(), value: dragAmount)
        
        
//        Button("Tap me") {
//            enabled.toggle()
//        }
//        .frame(width: 200, height: 200)
//        .background(enabled ? .blue : .red)
//        .animation(.default, value: enabled)
//        .foregroundColor(.white)
//        .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0))
//        .animation(.interpolatingSpring(stiffness: 10, damping: 1), value: enabled)
//
        
//        Button("Tap me") {
//            withAnimation(.interpolatingSpring(stiffness: 5, damping: 1)) {
//                animationCount += 360
//            }
//        }
//        .padding(50)
//        .background(.red)
//        .foregroundColor(.white)
//        .clipShape(Circle())
//        .rotation3DEffect(.degrees(animationCount), axis: (x: 0, y: 1, z: 0))
        
        
        
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
