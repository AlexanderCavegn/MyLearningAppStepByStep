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

        // Lesson card
        ZStack {

            Rectangle()
                .foregroundColor(.blue)
                .frame(height: 66)

            Text(lesson.title)
                .foregroundColor(.white)
        }

    }
}
