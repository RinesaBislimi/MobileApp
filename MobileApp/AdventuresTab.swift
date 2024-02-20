//
//  AdventuresTab.swift
//  MobileApp
//
//  Created by Viola on 19.2.24.
//

import SwiftUI

struct AdventuresTab: View {
    @State var show=false
    
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20){
                        VStack(alignment: .leading,spacing: 12){
                            Button(action: {
                                self.show.toggle()
                                
                            }) {
                                Image("adventure1")
                                    .resizable().frame(width: 200, height: 300).cornerRadius(20)
                            }
                            Text("Travel Time").fontWeight(.heavy)
                            HStack(spacing: 5){
                                Image(systemName: "mappin.and.ellipse").renderingMode(.original)
                                Text("Olongapo City").foregroundColor(.gray)
                            }
                        }
                         
                        VStack(alignment: .leading,spacing: 12){
                            Button(action: {
                                self.show.toggle()                            }) {
                                Image("adventure2")
                                    .resizable().frame(width: 200, height: 300).cornerRadius(20)
                            }
                            Text("Family Camping").fontWeight(.heavy)
                            HStack(spacing: 5){
                                Image(systemName: "mappin.and.ellipse").renderingMode(.original)
                                Text("Subic Bay").foregroundColor(.gray)
                            }
                        }
                 
                         
                        VStack(alignment: .leading,spacing: 12){
                            Button(action: {
                                self.show.toggle()                            }) {
                                Image("adventure3")
                                    .resizable().frame(width: 200, height: 300).cornerRadius(20)
                            }
                            Text("Travelling").fontWeight(.heavy)
                            HStack(spacing: 5){
                                Image(systemName: "mappin.and.ellipse").renderingMode(.original)
                                Text("Clark").foregroundColor(.gray)
                            }
                    }
                }
            }.sheet(isPresented: $show) {
                Detail(travel: Travelling(id: 1, name: "Fishing Time", image: "details", rating: 5, location: "Olongapo City"))
            }
    }
}
struct AdventuresTab_Previews: PreviewProvider {
    static var previews: some View {
        AdventuresTab()
    }
}
