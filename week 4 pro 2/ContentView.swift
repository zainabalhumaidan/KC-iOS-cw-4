//
//  ContentView.swift
//  week 4 pro 2
//
//  Created by Zainab Alhumaidan on 10/22/22.
//

import SwiftUI

struct ContentView: View {
    @State var best = "q"
     var body: some View {
        ZStack{
            Color.gray
                .ignoresSafeArea()
        VStack{
        Text(" what is the best track for you")
            .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
            .fontWeight(.semibold)
            .foregroundColor(Color.white)
            .multilineTextAlignment(.center)
            Spacer()
        Image(best)
            .resizable()
            .scaledToFit()
            .frame(width: 150, height: 150, alignment: .center)
            
            Image("")
            
            Text("IOS")
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(Color.white)
                
                .frame(width: 150.0, height:50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/
                )
                .onTapGesture {
                    best = "ios"
                }
            
            Text("android")
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(Color.white)
                .frame(width: 150/*@END_MENU_TOKEN@*/, height: 50, alignment: /*@START_MENU_TOKEN@*/.center)
                .onTapGesture {
                    best = "and"
                }
            Text("website")
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(Color.white)
                .frame(width: 150/*@END_MENU_TOKEN@*/, height: 50, alignment: /*@START_MENU_TOKEN@*/.center)
                .onTapGesture {
                    best = "web"
                }
            Text("gamedev")
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(Color.white)
                .frame(width: /*@START_MENU_TOKEN@*/150/*@END_MENU_TOKEN@*/, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .onTapGesture {
                    best = "game"
                }
            Spacer()
            
            
            
        }
    }
}
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
        }
    }
}
