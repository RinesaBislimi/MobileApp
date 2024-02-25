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
                            Text("Shpella e Gadimes").fontWeight(.heavy)
                            HStack(spacing: 5){
                                Image(systemName: "mappin.and.ellipse").renderingMode(.original)
                                Text("Gadime e Poshtme").foregroundColor(.gray)
                            }
                        }
                         
                        VStack(alignment: .leading,spacing: 12){
                            Button(action: {
                                self.show.toggle()                            }) {
                                Image("adventure2")
                                    .resizable().frame(width: 200, height: 300).cornerRadius(20)
                            }
                            Text("Liqeni i Batllaves").fontWeight(.heavy)
                            HStack(spacing: 5){
                                Image(systemName: "mappin.and.ellipse").renderingMode(.original)
                                Text("Podujeve").foregroundColor(.gray)
                            }
                        }
                 
                         
                        VStack(alignment: .leading,spacing: 12){
                            Button(action: {
                                self.show.toggle()                            }) {
                                Image("adventure3")
                                    .resizable().frame(width: 200, height: 300).cornerRadius(20)
                            }
                            
                            Text("Prekazi historik").fontWeight(.heavy)
                            HStack(spacing: 5){
                                Image(systemName: "mappin.and.ellipse").renderingMode(.original)
                                Text("Skenderaj").foregroundColor(.gray)
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

