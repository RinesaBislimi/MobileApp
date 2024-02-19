//
//  Home.swift
//  MobileApp
//
//  Created by Rinesa on 19.2.24.
//

import SwiftUI

 
struct Home : View {
     
    @State var selectedTab = Tabs.FirstTab
     
    var body : some View{
         
        VStack(alignment: .leading,spacing: 12){
            HStack{
                Button(action: {
                }) {
                    Image(systemName: "slider.horizontal.3")
                }
                
                Spacer()
                
                Button(action: {
                }) {
                    Image("photo1")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                }
            }
            
            Text("Find More").fontWeight(.heavy).font(.largeTitle).padding(.top,15)
            HStack{
                HStack {
                    
                    Text("Experiences").fontWeight(.heavy)
                        .onTapGesture {
                            self.selectedTab = .FirstTab
                        }
                    
                    
                    Spacer()
                    
                    Text("Adventures").fontWeight(.heavy)
                        .onTapGesture {
                            self.selectedTab = .SecondTab
                        }
                    
                    
                    Spacer()
                    
                    Text("Activities").fontWeight(.heavy)
                        .onTapGesture {
                            self.selectedTab = .ThirdTab
                        }
                }
                
                
                Spacer()
            }.padding([.top],30)
                .padding(.bottom,15)
        }
    }
}
 
struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
 
enum Tabs {
    case FirstTab
    case SecondTab
    case ThirdTab
}

