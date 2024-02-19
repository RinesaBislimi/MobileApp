//
//  AdventuresTab.swift
//  MobileApp
//
//  Created by Viola on 19.2.24.
//

import SwiftUI

struct AdventuresTab: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20){
                        VStack(alignment: .leading,spacing: 12){
                            Button(action: {
                                
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
                                
                            }) {
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
                               
                            }) {
                                Image("adventure3")
                                    .resizable().frame(width: 200, height: 300).cornerRadius(20)
                            }
                            Text("Travelling").fontWeight(.heavy)
                            HStack(spacing: 5){
                                Image(systemName: "mappin.and.ellipse").renderingMode(.original)
                                Text("Clark").foregroundColor(.gray)                    }
                }
            }
        }
    }
}
struct AdventuresTab_Previews: PreviewProvider {
    static var previews: some View {
        AdventuresTab()
    }
}
