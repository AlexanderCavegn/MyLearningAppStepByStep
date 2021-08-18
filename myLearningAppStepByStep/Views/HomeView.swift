//
//  HomeView.swift
//  myLearningAppStepByStep
//
//  Created by Alexander on 18.08.21.
//

import SwiftUI


// MARK: Views
struct HomeView: View {

    @EnvironmentObject var model: ContentModel

    var body: some View {

        NavigationView {

                VStack {

                    ForEach(model.modules) { module in

                        NavigationLink (
                            destination:
                                ListView()
                                .onAppear(perform: {
                                    model.beginModule(module.id)
                                }),

                            label: {

                                HomeViewRow(title: module.category, description: module.content.description)

                            })



                    }
            }
            .navigationTitle("StepByStep")
            .font(.title3)
            
        }
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {

        HomeView()
            .environmentObject(ContentModel())
    }
}
