//
//  Graph.swift
//  My First App
//
//  Created by Ali Mehmood on 03/04/2017.
//  Copyright © 2017 Ali Mehmood. All rights reserved.
//

import UIKit

class Graph: NSObject {
    

    private var canvas: Array<Node>
    public var isDirected: Bool
    
    
    override init()
    {
        canvas = Array<Node>()
        isDirected = false
    }
    
    //create a new vertex
    func addVertex(key: String, coordinates: CGPoint!) -> Node {
        
        //set the key
        let childVertex: Node = Node(nodeName: key, point: coordinates)
        childVertex.name = key
        
        //add the vertex to the graph canvas
        canvas.append(childVertex)
        return childVertex
    }
    
    
    //add an edge to source vertex
    func addEdge(source: Node, neighbor: Node, weight: Int) {
        
        //create a new edge
        let newEdge = Edge(w: weight, endNode: neighbor)
        source.neighbors?.append(newEdge)
        
        //create a new reversed edge
        let reverseEdge = Edge(w: weight, endNode: source)
        neighbor.neighbors?.append(reverseEdge)

    }
    
    
    
    
    
}