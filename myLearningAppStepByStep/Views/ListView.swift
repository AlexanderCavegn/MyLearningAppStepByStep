//
//  ListView.swift
//  myLearningAppStepByStep
//
//  Created by Alexander on 18.08.21.
//

import SwiftUI

//struct ListView: View {
//
//    @EnvironmentObject var model: ContentModel
//    // var index: Int
//
//    var body: some View {
//
//
//        ScrollView {
//            LazyVStack {
//
//                if model.currentModule != nil {
//                    ForEach(0..<model.currentModule!.content.lessons.count) { index in
//                        // ListViewRow(index: index)
//                        Text(model.currentModule!.content.lessons[index].title)
//
//
//
//
//
//                    }
//                }
//
//            }
//            .navigationTitle(model.currentModule?.category ?? "")
//
//        }
//    }
//
//
//}

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
