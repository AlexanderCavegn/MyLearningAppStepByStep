//
//  Models.swift
//  myLearningAppStepByStep
//
//  Created by Alexander on 18.08.21.
//

import Foundation

// MARK: Models
struct Module: Decodable, Identifiable {

    var id:Int
    var category:String
    var content: Content
}

struct Content: Decodable, Identifiable {

    var id: Int
    var description:String
    var lessons: [Lesson]
}

struct Lesson: Decodable, Identifiable {
    var id:Int
    var title:String
}
