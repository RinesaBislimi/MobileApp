//
//  ExperiencesTab.swift
//  MobileApp
//
//  Created by Viola on 19.2.24.
//

import SwiftUI

struct ExperiencesTab: View {
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false){
            HStack(spacing: 20 ){
                ForEach(data){i in
                VStack(alignment: .leading,spacing: 12){
                    Button(action: {
                    }){
             
                        Image(i.image)
                            .resizable().frame(width: 200, height: 300) .cornerRadius(20)
                    }
                    Text(i.name).fontWeight(.heavy)
                    HStack(spacing: 5){
                        Image(systemName:"mappin.and.ellipse").renderingMode(.original)
                        Text(i.location).foregroundColor(.gray)
                    }
                }
            }
        }
    }
}
}
struct ExperiencesTab_Previews: PreviewProvider {
    static var previews: some View {
        ExperiencesTab()
    }
}
