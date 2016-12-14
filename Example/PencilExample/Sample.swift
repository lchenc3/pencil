//
//  Sample.swift
//  PencilExample
//
//  Created by naru on 2016/09/21.
//  Copyright © 2016年 naru. All rights reserved.
//

import Foundation

struct Sample: CustomReadWriteElement {
    
    let dictionary: [String: Int]
    let array: [Int]
    let identifier: String
    
    static func read(from components: Components) -> Sample? {
        return Sample(
            dictionary: components.component(for: "dictionary", defaultValue: ["default":100]),
            array: components.component(for: "array", defaultValue: []),
            identifier: components.component(for: "identifier", defaultValue: "default")
        )
    }
}
