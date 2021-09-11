//
//  PracticeCellNode.swift
//  TexturePractice
//
//  Created by Darshil Agrawal on 08/09/21.
//

import UIKit
import AsyncDisplayKit

class PracticeCellNode: ASCellNode {
    let titleText = ASTextNode()
    let subtitleText = ASTextNode()
    let emptyText = ASTextNode()
    let emptyText2 = ASTextNode()
    
    init(text: String) {
        super.init()
        titleText.attributedText = NSAttributedString(string: text)
        subtitleText.attributedText = NSAttributedString(string: "Hello")
        backgroundColor = .cyan
        automaticallyManagesSubnodes = true
    }
    
    override func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
        let portion = ASStackLayoutSpec(direction: .horizontal, spacing: 10, justifyContent: .start, alignItems: .start, children: [titleText,subtitleText])
        let initialSpacing = ASStackLayoutSpec(direction: .horizontal, spacing: 10, justifyContent: .start, alignItems: .start, children: [emptyText2,portion])
        let vertiPortion = ASStackLayoutSpec(direction: .vertical, spacing: 8, justifyContent: .start, alignItems: .start, children: [initialSpacing,emptyText])
        return vertiPortion
    }
}
