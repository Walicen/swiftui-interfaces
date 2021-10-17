//
//  ContentView.swift
//  Shared
//
//  Created by Walicen Dalazuana on 07/10/21.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        
        NavigationView{
            GeometryReader{
                view in
                VStack{
                    HeaderView().frame(width: view.size.width,
                                       height: self.horizontalSizeClass == .compact ? 200 : 310, alignment: .top)
                    List(viagens){ viagem in
                        NavigationLink(destination: MapaView(coordenada: viagem.localizacao).navigationTitle("Localização")){
                            ViagemViewCell(viagem: viagem)
                        }
                        
                    }.navigationTitle("").padding(.top, 35)
                }
            }.edgesIgnoringSafeArea(.all)
        }.navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
