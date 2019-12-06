//
//  Graphable.swift
//  Challenges
//
//  Created by Joseph McCraw on 12/6/19.
//  Copyright © 2019 Joseph McCraw. All rights reserved.
//

import Foundation

protocol Graphable {
    
    associatedtype Element: Hashable
    
    var description: CustomStringConvertible {get}
    
    func createVertex(data: Element) -> Vertex<Element>
    func add(_ type: EdgeType, from source: Vertex<Element>, to destination: Vertex<Element>, weight: Double)
    func weight(from: Vertex<Element>, to destination: Vertex<Element> ) -> Double?
    func edges(from source: Vertex<Element>) -> [Edge<Element>]?
    
    
}
