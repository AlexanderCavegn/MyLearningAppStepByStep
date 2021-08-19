////
////  HomeView.swift
////  myLearningAppStepByStep
////
////  Created by Alexander on 18.08.21.
////
//
import SwiftUI
//
//
//// MARK: Views
//struct HomeView: View {
//
//    @EnvironmentObject var model: ContentModel
//
//    var body: some View {
//
//        NavigationView {
//            ScrollView {
//                LazyVStack {
//                    ForEach(model.modules) { module in
//
//                        //                    NavigationLink(
//                        //                        destination: ContentView,
//                        //                        label: {
//                        //                            /*@START_MENU_TOKEN@*/Text("Navigate")/*@END_MENU_TOKEN@*/
//                        //                        })
////                        HomeViewRow(title: module.category, description: module.content.description)
//
//                    }
//
//
//                }
//
//            }
//
//            .navigationTitle("MyLearningAppStepByStep")
//            .font(.body)
//        }
//
//    }
//}
//
//
//
//struct HomeView_Previews: PreviewProvider {
//    static var previews: some View {
//
//        HomeView()
//            .environmentObject(ContentModel())
//    }
//}
// MARK: Views
struct HomeView: View {

    @EnvironmentObject var model: ContentModel

    var body: some View {


        NavigationView {
            VStack {
                LazyVStack {

                    ForEach(model.modules) { module in
                        VStack {
                            NavigationLink (
                                destination:
                                    ListView()
                                    .onAppear(perform: {
                                        model.beginModule(module.id)
                                    }),

                                label: {

                                    HomeViewRow(title: module.category, description: module.content.description)

                                })

                            NavigationLink(destination: EmptyView()) {
                                EmptyView()
                            }

                        }




                    }

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
