//
//  page3.swift
//  TRM
//
//  Created by Ruaa Al-Oneizi on 02/04/2022.
//

import SwiftUI

struct page3: View {
    @State var case1 = ""
    @State var case2 = ""
    @State var case3 = ""
    @State var case4 = ""
    @State var case5 = ""
    @State var case6 = ""
    @State var case7 = ""
    @State var case8 = ""
    @State private var showingAlert = false
    var body: some View {
      
        
ZStack{
 Image("Bg 2")
 .resizable()
 .ignoresSafeArea()
           
VStack {
 
                 //  Spacer()
 Text(" الأعراض والأسباب")
.font(.largeTitle)
.fontWeight(.regular)
.foregroundColor(Color.white)
Spacer()
    VStack{
    
ScrollView{
 Text(" الاسباب:-")
    
HStack {
  Spacer()
VStack {
    HStack {
        Spacer()
        Text("الجوع")
            .foregroundColor(Color(hue: 1.0, saturation: 0.097, brightness: 0.3))
        .multilineTextAlignment(.trailing)
        .padding()
    }
 TextField(" الإجابة بنعم  أو لا", text: $case1)
.multilineTextAlignment(.trailing)
.font(.title)
.padding()
            }
        }
                    
HStack {
 Spacer()
VStack {
    HStack {
        Spacer()
        Text("طعام معين")
            .foregroundColor(Color(hue: 1.0, saturation: 0.097, brightness: 0.3))
        .multilineTextAlignment(.trailing)
        .padding()
    }
TextField("الإجابة بنعم أو لا", text: $case2)
 .multilineTextAlignment(.trailing)
 .font(.title)
 .padding()
           }
      }
    
HStack {
 Spacer()
VStack {
    HStack {
        Spacer()
        Text("الإضاءة")
            .foregroundColor(Color(hue: 1.0, saturation: 0.097, brightness: 0.3))
        .multilineTextAlignment(.trailing)
        .padding()
    }
   TextField("الإجابة بنعم أو لا", text: $case3)
        .font(.title)
   .multilineTextAlignment(.trailing)
   .padding()
            }
      }
                        
HStack {
 Spacer()
VStack {
    HStack {
        Spacer()
        Text("استخدام الأجهزة الإلكترونية")
            .foregroundColor(Color(hue: 1.0, saturation: 0.097, brightness: 0.3))
        .multilineTextAlignment(.trailing)
        .padding()
    }
    TextField("الإجابة  بنعم أو لا", text: $case4)
        .font(.title)
    .multilineTextAlignment(.trailing)
    .padding()
             }
       }
                   
Text(" الأعراض")
    
HStack {
 Spacer()
VStack {
    HStack {
        Spacer()
        Text("الإنزاعاج من الصوت العالي")
            .foregroundColor(Color(hue: 1.0, saturation: 0.097, brightness: 0.3))
        .multilineTextAlignment(.trailing)
        .padding()
    }
   TextField("الإجابة بنعم أو لا", text: $case5)
        .font(.title)
   .multilineTextAlignment(.trailing)
   .padding()
            }
      }
                        
HStack {
 Spacer()
VStack {
    HStack {
        Spacer()
        Text("غثيان")
            .foregroundColor(Color(hue: 1.0, saturation: 0.097, brightness: 0.3))
        .multilineTextAlignment(.trailing)
        .padding()
    }
   TextField("الإجابة بنعم أو لا", text: $case6)
        .font(.title)
   .multilineTextAlignment(.trailing)
   .padding()
            }
      }
                        
HStack {
Spacer()
 VStack {
     HStack {
         Spacer()
         Text("تغير في المزاج")
             .foregroundColor(Color(hue: 1.0, saturation: 0.097, brightness: 0.3))
         .multilineTextAlignment(.trailing)
         .padding()
     }
    TextField("الإجابة بنعم أو لا", text: $case7)
         .font(.title)
    .multilineTextAlignment(.trailing)
    .padding()
            }
       }
                        
HStack {
Spacer()
 VStack {
     HStack {
         Spacer()
         Text("وجود ألم في  جانب واحد")
             .foregroundColor(Color(hue: 1.0, saturation: 0.097, brightness: 0.3))
         .multilineTextAlignment(.trailing)
         .padding()
     }
    TextField("الإجابة بنعم أو لا", text: $case8)
         .font(.title)
    .multilineTextAlignment(.trailing)
    .padding()
            }
       }
                        
                        
                        
                   }
.padding(.top,30)
.font(.largeTitle)
            
.padding(.top,30)
.font(.largeTitle)
                    }
// .multilineTextAlignment(.trailing)
    
    
if (!case1.isEmpty && !case2.isEmpty && !case3.isEmpty && !case4.isEmpty && !case5.isEmpty && !case6.isEmpty && !case7.isEmpty && !case8.isEmpty){
Spacer()
    
    Spacer()
    
Text("OK").foregroundColor(Color(hue: 0.104, saturation: 0.386, brightness: 0.445))
.onTapGesture {
showingAlert = true
                    }
                
.alert("تم حفظ البيانات", isPresented: $showingAlert) {
Button("OK", role: .cancel) { }
                    }
                    }
                }
            
            }
.navigationBarHidden(true)
        }
   
    }


struct page3_Previews: PreviewProvider {
    static var previews: some View {
        page3()
    }
}
