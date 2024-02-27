//
//  detailBottom.swift
//  MobileApp
//
//  Created by Viola on 20.2.24.
//

import SwiftUI
 
struct detailBottom : View {
    
    var body : some View{
        
        VStack(alignment: .leading, spacing: 10){
            Text("Description").fontWeight(.heavy)
            Text("If you're going from one place to another, you're travelling. People love to go travelling to see new places and experience different cultures.").foregroundColor(.gray)
            
            HStack(spacing: 8){
                Button(action: {
                    
                }) {
                    Image(systemName: "bookmark")
                }
                
                Button(action: {
                    
                }) {
                    HStack(spacing: 6){
                        Text("Book Your Experience")
                        Image(systemName: "arrow.right.circle").renderingMode(.original)
                    }.foregroundColor(.white)
                        .padding()
                }.background(Color.blue)
                    .cornerRadius(8)
            }.padding(.top, 6)
            
        }.padding()
    }
    
    struct detailBottom_Previews: PreviewProvider {
        static var previews: some View {
            detailBottom()
        }
    }
}
