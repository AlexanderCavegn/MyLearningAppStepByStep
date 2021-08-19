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
                .frame(width: 350,
                       height: 125,
                       alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(13.0)

            VStack {
                Image(systemName: "text.book.closed")
                Text(title)
                    .font(.largeTitle)

                Text(description)
            }
            .foregroundColor(.white)
        }
    }
}

struct HomeViewRow_Previews: PreviewProvider {
    static var previews: some View {
        HomeViewRow(title: "some title",
                    description: "some description")
    }
}
