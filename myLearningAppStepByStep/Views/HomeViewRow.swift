//
//  HomeViewRow.swift
//  myLearningAppStepByStep
//
//  Created by Alexander on 18.08.21.
//

import SwiftUI

struct HomeViewRow: View {
    
    var title: String
    var description: String

    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .aspectRatio(CGSize(width: 335, height: 175), contentMode: .fit)

            VStack {
                Text(title)

                Text(description)
                
            }
            .foregroundColor(.white)
        }
    }
}

struct HomeViewRow_Previews: PreviewProvider {
    static var previews: some View {
        HomeViewRow(title: "some title", description: "some description")
    }
}
