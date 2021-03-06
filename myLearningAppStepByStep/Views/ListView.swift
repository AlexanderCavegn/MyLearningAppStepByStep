//
//  ListView.swift
//  myLearningAppStepByStep
//
//  Created by Alexander on 18.08.21.
//

import SwiftUI

struct ListView: View {

    @EnvironmentObject var model: ContentModel

    var body: some View {

        ScrollView {
            LazyVStack {

                if model.currentModule != nil {
                    
                    ForEach(0..<model.currentModule!.content.lessons.count) { index in
                        ListViewRow(index: index)
                   }
                }

            }
            .navigationTitle("Learn \(model.currentModule?.category ?? "")")

        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {

        ListView()
            .environmentObject(ContentModel())
    }
}
