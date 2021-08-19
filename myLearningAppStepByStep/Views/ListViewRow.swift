//
//  ListViewRow.swift
//  myLearningAppStepByStep
//
//  Created by Alexander on 18.08.21.
//

import SwiftUI

struct ListViewRow: View {

    @EnvironmentObject var model: ContentModel

    var index:Int

    var body: some View {

        let lesson = model.currentModule!.content.lessons[index]

        ZStack {

            Rectangle()
                .foregroundColor(.blue)

                .frame(width: 400,
                       height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,
                       alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(30)

            HStack{

                Text(String(index + 1))
                    .padding(.trailing)
                
                Text(lesson.title)
                    .foregroundColor(.white)
            }
        }
    }
}

