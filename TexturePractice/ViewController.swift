//
//  ViewController.swift
//  TexturePractice
//
//  Created by Darshil Agrawal on 03/09/21.
//

import UIKit
import AsyncDisplayKit

class ViewController: ASDKViewController<ASTableNode> {

    var tableNode:ASTableNode!
    
    override init() {
        let tableNode = ASTableNode(style: .plain)
        super.init(node: tableNode)

        tableNode.dataSource = self
        tableNode.delegate = self

        self.tableNode = tableNode
    }
    
    required init?(coder: NSCoder) {
        fatalError("Storyboard ka Zamana Gaya Dost :)")
    }
}

extension ViewController:ASTableDataSource,ASTableDelegate{
    func tableNode(_ tableNode: ASTableNode, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    func tableNode(_ tableNode: ASTableNode, nodeForRowAt indexPath: IndexPath) -> ASCellNode {
        let cell = ASCellNode.init()
        cell.backgroundColor = .black
        return cell
    }

    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableNode(_ tableNode: ASTableNode, didSelectRowAt indexPath: IndexPath) {
        do {
            tableNode.deselectRow(at: indexPath, animated: true)
        }
    }
    
}
