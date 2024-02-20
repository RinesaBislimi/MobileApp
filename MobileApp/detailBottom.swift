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
            Text("Towering redwoods, peaceful parkland and the magnificent coast are just some of the landscapes that make the Peninsula and South Bay extraordinary.").foregroundColor(.gray)
            
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
                }.background(Color.orange)
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
