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
    let emptyNode = ASTextNode()
    
    init(text:String) {
        super.init()
        let myAttribute = [ NSAttributedString.Key.font: UIFont(name: "Baskerville", size: 18.0)! ]
        let attr = NSAttributedString(string: text,attributes: myAttribute)
        self.textNode.attributedText = attr
        let secondAttr = NSAttributedString(string: "Namaste",attributes: myAttribute)
        self.emptyNode.attributedText = secondAttr
        self.imageNode.image = UIImage(named: "placeholderImage")
        backgroundColor = .cyan
        automaticallyManagesSubnodes = true
    }
    
    override func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
        imageNode.contentMode = .scaleAspectFit
        
        let textStack = ASStackLayoutSpec(direction: .horizontal, spacing: 20, justifyContent: .start, alignItems: .center, children: [emptyNode,textNode])
        let firstPortion = ASStackLayoutSpec(direction: .vertical, spacing: 0, justifyContent: .center, alignItems: .center, children: [imageNode,textStack])
        return firstPortion
    }
}
