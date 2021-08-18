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
    @Published var currentModule:Module?
    var currentModuleIndex = 0

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

    func beginModule (_ moduleid: Int) {
    	for index in 0..<modules.count {
            if modules[index].id == moduleid {	// Found the matching module
                currentModuleIndex = index
                break	// der Loop wird beendet
            }

    	}
        currentModule = modules[currentModuleIndex] // wenn der Loop beendet ist, kennen wir das richtige Module
    }
}
