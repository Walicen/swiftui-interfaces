//
//  ViagemViewCell.swift
//  swift_ui_test
//
//  Created by Walicen Dalazuana on 16/10/21.
//

import SwiftUI

struct ViagemViewCell: View {
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    let viagem: Viagem
    
    var body: some View {
        VStack(alignment: .leading){
            Text(viagem.titulo).font(.custom("Avenir", size: self.horizontalSizeClass == .compact ? 14 : 24))
            Image(viagem.imagem)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: self.horizontalSizeClass == .compact ? 125 : 200)
                .clipped()
            
            HStack{
                Text(viagem.quantidadeDeDias)
                    .font(.custom("Avenir", size: self.horizontalSizeClass == .compact ? 14 : 24))
                Spacer()
                Text(viagem.valor)
                    .font(.custom("Avenir", size: self.horizontalSizeClass == .compact ? 14 : 24))
            }
        }
    }
}

struct ViagemViewCell_Previews: PreviewProvider {
    static var previews: some View {
        ViagemViewCell(viagem: viagens[0])
            .previewLayout(.fixed(width: 350, height: 200))
    }
}
