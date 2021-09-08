//
//  PracticeCellNode.swift
//  TexturePractice
//
//  Created by Darshil Agrawal on 08/09/21.
//

import UIKit
import AsyncDisplayKit

class PracticeCellNode: ASCellNode{
    let titleText = ASTextNode()
    
    init(text: String) {
        super.init()
        titleText.attributedText = NSAttributedString(string: text)
        backgroundColor = .white
        automaticallyManagesSubnodes = true
    }
    
    override func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
        let portion = ASStackLayoutSpec(direction: .vertical, spacing: 10, justifyContent: .start, alignItems: .start, children: [titleText])
        return portion
    }
}
