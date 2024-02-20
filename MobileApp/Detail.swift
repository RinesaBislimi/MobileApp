//
//  Detail.swift
//  MobileApp
//
//  Created by Rinesa on 19.2.24.
//

import SwiftUI

struct Detail: View {
    var body: some View {
        VStack{
            GeometryReader { geometry in
                Image("details")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: geometry.size.width, height: geometry.size.height)
                    .offset(y: geometry.frame(in: .global).minY/50)
                    .padding(.bottom, -200)
                    .edgesIgnoringSafeArea(.all)
            }
            ScrollView(.vertical, showsIndicators: true) {
                
                VStack(alignment: .leading){
                    
                    VStack(alignment: .leading, spacing: 10){
                        HStack{
                            VStack(alignment: .leading){
                                Text("Fishing time").fontWeight(.heavy).font(.largeTitle)
                            }
                            
                            Spacer()
                            Text("$587").foregroundColor(Color.orange).font(.largeTitle)
                        }
                    }.padding()
                    VStack(alignment: .leading, spacing: 15){
                        HStack(spacing: 5){
                            Image(systemName: "mappin.and.ellipse").renderingMode(.original)
                            Text("Olongapo City").foregroundColor(Color.orange)
                        }
                        
                        HStack(spacing : 8){
                            ForEach(0..<5){_ in
                                Image(systemName: "star.fill").font(.body).foregroundColor(.yellow)
                            }
                        }
                        Text("People").fontWeight(.heavy)
                        Text("Number Of People In Your Group").foregroundColor(.gray)
                        HStack(spacing: 6){
                            ForEach(0..<5){i in
                                Button(action: {
                                     
                                }) {
                                    Text("\(i + 1)").foregroundColor(.white).padding(20)
                                }.background(Color.orange)
                                .cornerRadius(8)
                            }
                        }
                    }.padding(.horizontal,15)
                   
                }
            }
        }
    }
}

struct Detail_Previews: PreviewProvider {
    static var previews: some View {
        Detail()
    }
}
