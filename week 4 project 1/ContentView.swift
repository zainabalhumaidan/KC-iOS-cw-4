//
//  ContentView.swift
//  week 4 project 1
//
//  Created by Zainab Alhumaidan on 10/19/22.
//

import SwiftUI

struct ContentView: View {
    @State var stat = ""
    @State var abcd = ""
    var body: some View {
        ZStack{
            Color.white
                .ignoresSafeArea()
            VStack{
            Text(" Status Calculator")
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(Color(red: 0.4, green: 0.537, blue: 0.5))
                
   
            Image("calc")
                .resizable()
                .scaledToFit()
                .frame(width: 150.0, height: 250.0)
                
                TextField(" your grade", text: $stat)
                    .padding()
                    .frame(width: 300.0, height: 50.0)
                    .border(Color(red: 0.412, green: 0.549, blue: 0.512), width: 3)
                    
                  
                Text(" calculate my grade")
                    .font(.callout)
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 0.392, green: 0.526, blue: 0.489))
                    .frame(width: 200, height: 60)
                    .border(Color(red: 0.404, green: 0.541, blue: 0.504), width: 3)
                    .cornerRadius(6.0)
               
                
                    .onTapGesture {
                    if Int(stat) ?? 0 >= 90 {abcd = "A"}
                    else if (Int(stat) ?? 0 >= 80 ){ abcd = "B"}
                    
                    else if (Int(stat) ?? 0 >= 70 ){ abcd = "C"}
                    else if (Int(stat) ?? 0 >= 60 ){ abcd = "D"}
                    else { abcd = "F"}
                        
                       
                    
                    
                }
                Text(abcd)
             
        
                
            
                
        
            
        }
        
            

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
