//
//  BottomView.swift
//  MobileApp
//
//  Created by Rinesa on 19.2.24.
//

import SwiftUI


struct BottomView : View {
      
     var body : some View{
          
         VStack{
             HStack{
                 Text("What you want ?").fontWeight(.heavy)
                 Spacer()
                  
                 Button(action: {
                 }) {
                     Text("View all").foregroundColor(.gray)
                 }
                  
             }.padding([.top], 15)
              
             ScrollView(.horizontal, showsIndicators: false) {
                 HStack(spacing: 35){
                     Button(action: {
                     }) {
                         VStack(spacing: 8){
                             Image("whatyouwant_01")
                                 .resizable().frame(width: 50, height: 50).cornerRadius(10)
                             Text("Hiking").foregroundColor(.gray)
                         }
                     }
                      
                     Button(action: {
                     }) {
                         VStack(spacing: 8){
                             Image("whatyouwant_02")
                                 .resizable().frame(width: 50, height: 50).cornerRadius(10)
                             Text("Ski").foregroundColor(.gray)
                         }
                     }
                          
                     Button(action: {
                              
                     }) {
                         VStack(spacing: 8){
                             Image("whatyouwant_03")
                                 .resizable().frame(width: 50, height: 50).cornerRadius(10)
                             Text("Sky Diving").foregroundColor(.gray)
                         }
                     }
                     Button(action: {
                              
                     }) {
                         VStack(spacing: 8){
                             Image("whatyouwant_04")
                                 .resizable().frame(width: 50, height: 50).cornerRadius(10)
                             Text("SkateBoard").foregroundColor(.gray)
                         }
                     }
                 }
             }.padding(.leading, 20)
             .padding([.top,.bottom], 15)
         }
     }
 }

struct BottomView_Previews: PreviewProvider {
   static var previews: some View {
       BottomView()
   }
}
