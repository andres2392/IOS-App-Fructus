//
//  StartButtonView.swift
//  Fructus
//
//  Created by PDWS on 8/23/22.
//

import SwiftUI

struct StartButtonView: View {
    //MARK: - PROPIERTIES
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    //MARK: - BODY
    
    var body: some View {
        Button(action: {
            isOnboarding = false
        }) {
            HStack(spacing: 8){
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }//: HSTACK
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25)
            )
        }//: BUTTON
        .accentColor(Color.white)
    }
}

//MARK: - PREVIEW

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
