//
//  ContentModel.swift
//  myLearningAppStepByStep
//
//  Created by Alexander on 18.08.21.
//

import Foundation

// MARK: ContentModel
class ContentModel: ObservableObject {

    @Published var modules = [Module]()

    init() {
        getLocalData()
    }


    func getLocalData(){
        let jsonUrl = Bundle.main.url(forResource: "data", withExtension: "json")
        do {
            let jsonData = try Data(contentsOf: jsonUrl!)
            let jsonDecoder = JSONDecoder()
            let modules = try jsonDecoder.decode([Module].self, from: jsonData)
            self.modules = modules
        }
        catch {
            print("Couldn't parse local data")
        }
    }
}
