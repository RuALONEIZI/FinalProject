//
//  ContentView.swift
//  TRM
//
//  Created by RUAA Al-Oneizi on 31/03/2022.
//

import SwiftUI

struct MainPage: View {
   @State var ID : String = ""
    @State var name : String = ""
    var body: some View {
        
        
        NavigationView {
            ZStack{
                Image("logo bg")
                    .resizable()
                    .ignoresSafeArea()
                
                VStack{
                    
                    Image("My Logo")
                        .frame(width:250, height: 250)
                   
                    
                    Text("Track Your Migrain")
                        .font(.largeTitle)
                        .fontWeight(.regular)
                        .foregroundColor(Color(hue: 1.0, saturation: 0.043, brightness: 0.236))
                .multilineTextAlignment(.center)
                    
                    Spacer()
                    
                    TextField("Write your name here", text: $name).multilineTextAlignment(.center)
                    
                    TextField("Typr your Civi Id Number here", text: $ID)
                        .multilineTextAlignment(.center)
                  
              // if
                    
                    Spacer()
            NavigationLink {
                    page2()
                    } label: {
                        Text("NEXT").foregroundColor(Color(hue: 0.104, saturation: 0.386, brightness: 0.445))                    }
                    Spacer()
                        }
                            // the end of vstack
                
    
            }
            // the end of Zstack
        }
}
 
    
    struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
            
    }
}
}

