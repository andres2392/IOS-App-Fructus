//
//  FruitNutientsView.swift
//  Fructus
//
//  Created by PDWS on 8/23/22.
//

import SwiftUI

struct FruitNutientsView: View {
    //MARK: - PROPERTIES
    var fruit: Fruit
    let nutrients: [String] = ["Energy", "Sugar", "Fact", "Protein", "Vitamins", "Minerals"]
    
    //MARK: - BODY
    var body: some View {
        GroupBox(){
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0..<nutrients.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }//: HSTACK
                }
            }
        }
    }
}


//MARK: - PREVIEW
struct FruitNutientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutientsView(fruit: fruitsData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
