//
//  NewPracticeCellNode.swift
//  TexturePractice
//
//  Created by Darshil Agrawal on 11/09/21.
//

import Foundation
import AsyncDisplayKit

class NewPracticeCellNode: ASCellNode {
   let textNode = ASTextNode()
    let imageNode = ASImageNode()
    
    init(text:String) {
        super.init()
        self.textNode.attributedText = NSAttributedString(string: text)
        self.imageNode.image = UIImage(named: "placeholderImage")
        backgroundColor = .cyan
        automaticallyManagesSubnodes = true
    }
    override func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
        imageNode.contentMode = .scaleAspectFit
        let firstPortion = ASStackLayoutSpec(direction: .vertical, spacing: 10, justifyContent: .center, alignItems: .center, children: [imageNode,textNode])
        return firstPortion
    }
}
