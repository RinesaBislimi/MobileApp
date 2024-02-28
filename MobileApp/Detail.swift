//
//  Detail.swift
//  MobileApp
//
//  Created by Rinesa on 19.2.24.
//

import SwiftUI
 
struct Detail : View {
     
    var travel : Travelling
     
    var body : some View{
         
        VStack{
            GeometryReader { geometry in
                Image(travel.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: geometry.size.width, height: geometry.size.height)
                    .offset(y: geometry.frame(in: .global).minY/50)
                    .padding(.bottom, -200)
                    .edgesIgnoringSafeArea(.all)
            }
            GeometryReader{geo in
                ScrollView(.vertical, showsIndicators: true) {
                     
                    VStack(alignment: .leading){
                         
                        VStack(alignment: .leading, spacing: 10){
                            HStack{
                                VStack(alignment: .leading){
                                    Text(travel.name).fontWeight(.heavy).font(.largeTitle)
                                }
                                 
                                Spacer()
                                Text("").foregroundColor(Color.blue).font(.largeTitle)
                            }
                        }.padding()
                         
                        VStack(alignment: .leading, spacing: 15){
                            HStack(spacing: 5){
                                Image(systemName: "mappin.and.ellipse").renderingMode(.original)
                                Text(travel.location).foregroundColor(Color.blue)
                            }
                             
                            HStack(spacing : 8){
                                ForEach(0..<travel.rating){_ in
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
                                    }.background(Color.blue)
                                    .cornerRadius(8)
                                }
                            }
                        }.padding(.horizontal,15)
                         
                        detailBottom(itemName: travel.name)
                    }
                }
                 
            }.background(Color.white)
            .clipShape(Rounded())
            .padding(.top, -75)
        }
    }
}
 
struct Detail_Previews: PreviewProvider {
    static var previews: some View {
        let travels =  Travelling(id: 1, name: "test", image: "details", rating: 1, location: "Olongapo")
        return Detail(travel: travels)
     
    }
}
