//
//  question.swift
//  Quizzler-iOS13
//
//  Created by Mateusz Dębski on 21/05/2020.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let name: String
    let answer: String
    
    init(q: String, a: String) {
        name = q
        answer = a
    }
}
