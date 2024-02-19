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
                        .foregroundColor(selectedTab == .FirstTab ? Color.red : Color.black)
                    .onTapGesture {
                        self.selectedTab = .FirstTab
                    }
                     
                    Spacer()
                     
                    Text("Adventures").fontWeight(.heavy)
                        .foregroundColor(selectedTab == .SecondTab ? Color.red : Color.black)
                    .onTapGesture {
                        self.selectedTab = .SecondTab
                    }
                     
                    Spacer()
                     
                    Text("Activities").fontWeight(.heavy)
                        .foregroundColor(selectedTab == .ThirdTab ? Color.red : Color.black)
                    .onTapGesture {
                        self.selectedTab = .ThirdTab
                    }
                }
                 
                Spacer()
            }.padding([.top],30)
            .padding(.bottom, 15)
         
            if selectedTab == .FirstTab {
                FirstTabView()
            } else if selectedTab == .SecondTab {
                SecondTabView()
            } else {
                ThirdTabView()
            }
        }.padding()
    }
}
 
struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
 
struct FirstTabView : View {
    var body : some View {
        ExperiencesTab()
       
    }
}
 
struct SecondTabView : View {
    var body : some View {
        AdventuresTab()
       
    }
}
 
struct ThirdTabView : View {
    var body : some View {
        Text("hello")
    }
}
 
enum Tabs {
    case FirstTab
    case SecondTab
    case ThirdTab
}
