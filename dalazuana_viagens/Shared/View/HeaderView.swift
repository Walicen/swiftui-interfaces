//
//  HeaderView.swift
//  swift_ui_test
//
//  Created by Walicen Dalazuana on 16/10/21.
//

import SwiftUI

struct HeaderView: View {
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    func checkSize() -> Bool {
        return self.horizontalSizeClass == .compact
    }
    
    var body: some View {
        
        GeometryReader{
            view in
            VStack{
                VStack{
                    Text("Dalazuana Viagens")
                        .foregroundColor(Color.white)
                        .font(.custom("Avenir Black", size: checkSize() ? 20 : 30))
                        .padding(.top, 50)
                    Text("ESPECIAL")
                        .foregroundColor(Color.white)
                        .font(.custom("Avenir Book", size: self.horizontalSizeClass == .compact ? 20 : 30))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 30)
                    Text("BRASIL")
                        .foregroundColor(Color.white)
                        .font(.custom("Avenir Black", size: self.horizontalSizeClass == .compact ? 23 : 32))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 30)
                }.frame(width: view.size.width, height: self.horizontalSizeClass == .compact ? 200 : 310 , alignment: .top)
                    .background(Color.purple)
                
                
                HStack(alignment: .bottom, spacing: (view.size.width - 200) / 3){
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("Hotéis")
                            .font(.custom("Avenir Medium", size: self.horizontalSizeClass == .compact ? 17 : 24))
                            .foregroundColor(.white)
                            .padding()
                    }
                    .frame(width: self.horizontalSizeClass == .compact ? 100 : 150, height: self.horizontalSizeClass == .compact ? 50 : 75)
                    .background(Color.orange)
                    .cornerRadius(12)
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("Pacotes").font(.custom("Avenir Medium", size: self.horizontalSizeClass == .compact ? 17 : 24))
                            .foregroundColor(.white).padding()
                    }
                    .frame(width: self.horizontalSizeClass == .compact ? 100 : 150, height: self.horizontalSizeClass == .compact ? 50 : 75)
                    .background(Color.blue)
                    .cornerRadius(12)
                    
                }.offset(y: self.horizontalSizeClass == .compact ? -35 : -45)
            }
        }
    }
}
    
struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
