//
//  page2.swift
//  TRM
//
//  Created by Ruaa Al-Oneizi on 31/03/2022.
//

import SwiftUI
struct page2: View {
  @State var datePicker = Date()
var body: some View {
     //   @State var name : String = ""
        
        
            ZStack{
                
                Image("Bg 1")
                    .resizable()
                    .ignoresSafeArea()
                
                VStack{
                    HStack {
                        Spacer()
                        Text(" أهلاً")
                            .font(.largeTitle)
                        .fontWeight(.bold)
                    .multilineTextAlignment(.trailing)
                    }
                Text("سلامات !")
                    .font(.largeTitle)
                    .foregroundColor(Color(hue: 1.0, saturation: 0.027, brightness: 1.0))
                    .multilineTextAlignment(.center)
                    Spacer()
                    
                    DatePicker("calendar", selection: $datePicker, displayedComponents: [.date])
                        .datePickerStyle(.graphical)
                        .padding()
                    Spacer()
                    
                    NavigationLink {
                        page3()
                    } label: {
                        Text("NEXT ")
                            .foregroundColor(Color(hue: 0.104, saturation: 0.386, brightness: 0.445))
                    }
                
            }
             //the end of vstack
                
        }
       
        //the end of zstack
    
}
    

struct page2_Previews: PreviewProvider {
    static var previews: some View {
        page2()
    }
  }
}

