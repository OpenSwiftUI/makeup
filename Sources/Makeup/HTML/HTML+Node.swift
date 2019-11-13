//
//  HTML+Node.swift
//  Makeup
//
//  Created by Maxim Krouk on 9/1/19.
//  Copyright © 2019 Maxim Krouk. All rights reserved.
//

extension HTML {
    
    public indirect enum Node: ExpressibleByStringLiteral {
        case raw(String)
        case text(String)
        case fragment([Node] = [])
        case comment(String)
        case element(StaticTagProtocol.Type, ErasedAttributeSet, Node)
        
        public init(stringLiteral value: String) { self = .text(value) }
        
        public var isEmpty: Bool {
            switch self {
            case let .comment(string), let .raw(string), let .text(string):
                return string.isEmpty
            case .element:
                return false
            case let .fragment(children):
                return children.allSatisfy { $0.isEmpty }
            }
        }
    }
    
}
