//
//  CollectionViewNode.swift
//  TexturePractice
//
//  Created by Darshil Agrawal on 10/09/21.
//

import Foundation
import AsyncDisplayKit

class CollectionViewNode: ASDKViewController<ASCollectionNode> {
    var collectionNode:ASCollectionNode!
    
    override init() {
        let collectionNode = ASCollectionNode(collectionViewLayout: UICollectionViewFlowLayout())
        super.init(node: collectionNode)

        collectionNode.dataSource = self
        collectionNode.delegate = self
        self.view.backgroundColor = .white
        self.collectionNode = collectionNode
    }
    
    required init?(coder: NSCoder) {
        fatalError("Storyboard ka Zamana Gaya Dost :)")
    }
}

extension CollectionViewNode:ASCollectionDataSource,ASCollectionDelegate{
    func collectionNode(_ collectionNode: ASCollectionNode, numberOfItemsInSection section: Int) -> Int {
        return 10
    }

    func collectionNode(_ collectionNode: ASCollectionNode, nodeForItemAt indexPath: IndexPath) -> ASCellNode {
        let cell = PracticeCellNode(text: "\(indexPath.row)")
        return cell
    }
}
