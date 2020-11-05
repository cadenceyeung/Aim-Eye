//
//  ContentView.swift
//  Aime-Eye
//
//  Created by Cadence Yeung on 2020-10-29.
//

import SwiftUI

struct ContentView: View {
    @State var showDetails = false
    @State var showDetails1 = false
    var body: some View {
        VStack(spacing: 30) {
            VStack {
                Button(action: {
                    self.showDetails.toggle()
                }) {
                    Text("Text-To-Speech")
                        .fontWeight(.bold)
                        .font(.largeTitle)
                        .multilineTextAlignment(.center)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .padding(10)
                        .border(Color.blue, width: 5)
                }
                if showDetails {
                    Text("You have selected the Text-To-Speech option!")
                        .font(.largeTitle)
                        .multilineTextAlignment(.center)
                        .lineLimit(nil)
                }
            }
            VStack {
                Button(action: {
                    self.showDetails1.toggle()
                }) {
                Text("Speech-To-Text")
                    .fontWeight(.bold)
                    .font(.largeTitle)
                    .padding()
                    .background(Color.red)
                    .foregroundColor(.white)
                    .padding(10)
                    .border(Color.red, width: 5)
                }
                if showDetails1 {
                    Text("You have selected the Speech-to-Text option!")
                        .font(.largeTitle)
                        .multilineTextAlignment(.center)
                        .lineLimit(nil)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
