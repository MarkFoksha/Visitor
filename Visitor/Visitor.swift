//
//  Visitor.swift
//  Visitor
//
//  Created by Марк Фокша on 13.07.2023.
//

import UIKit

struct HeightResultVisitor {
    func visit(_ cells: FirstCell) -> CGFloat { return 10.0 }
    func visit(_ cells: SecondCell) -> CGFloat { return 10.0 }
    func visit(_ cells: ThirdCell) -> CGFloat { return 10.0 }
}

protocol HeightResultVisitable {
    func accept(_ visitor: HeightResultVisitor) -> CGFloat
}

