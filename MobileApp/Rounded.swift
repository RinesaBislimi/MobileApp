//
//  Rounded.swift
//  MobileApp

//  Created by Viola on 20.2.24.
//
import SwiftUI
struct Rounded : Shape {
     
    func path(in rect: CGRect) -> Path {
         
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft,.topRight], cornerRadii: CGSize(width: 40, height: 40))
        return Path(path.cgPath)
    }
}
 
struct Rounded_Previews: PreviewProvider {
    static var previews: some View {
        Rounded()
    }
}
