//
//  RLLockedHeaderController.swift
//  RLStickyHeaderFlowLayout
//
//  Created by Roy lee on 16/7/17.
//  Copyright © 2016年 Roy lee. All rights reserved.
//
// Converted to Swift 3 by Mark R. Masterson For Ridebrain
//
//

import UIKit

class RLLockedHeaderController: RLBaseCollectionController {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        // config the header
        parallaxHeaderReferenceHeight = 44
        parallaxHeaderMinimumReferenceHeight = 44
        
        // load header
        headerNib = UINib.init(nibName: "RLSearchBarHeader", bundle: Bundle.main)
        
        // init data
        sections = [["Twitter":"http://twitter.com"],
                    ["Facebook":"http://facebook.com"],
                    ["Tumblr":"http://tumblr.com"],
                    ["Pinterest":"http://pinterest.com"],
                    ["Instagram":"http://instagram.com"],
                    ["Github":"http://github.com"],
                    ["Twitter":"http://twitter.com"],
                    ["Facebook":"http://facebook.com"],
                    ["Tumblr":"http://tumblr.com"],
                    ["Pinterest":"http://pinterest.com"],
                    ["Instagram":"http://instagram.com"],
                    ["Github":"http://github.com"],]
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView!.scrollIndicatorInsets = UIEdgeInsets.init(top: 44, left: 0, bottom: 0, right: 0);
        
        let add = UIBarButtonItem.init(title: "Add", style: .plain, target: self, action: #selector(RLLockedHeaderController.add))
        navigationItem.rightBarButtonItem = add
    }
    
    @objc func add() {
        
        weak var weakSelf = self
        collectionView?.performBatchUpdates({
            let new = [["Twitter":"http://twitter.com"],
                ["Facebook":"http://facebook.com"],
                ["Tumblr":"http://tumblr.com"],
                ["Pinterest":"http://pinterest.com"],
                ["Instagram":"http://instagram.com"],
                ["Github":"http://github.com"],
                ["Twitter":"http://twitter.com"],
                ["Facebook":"http://facebook.com"],
                ["Tumblr":"http://tumblr.com"],
                ["Pinterest":"http://pinterest.com"],
                ["Instagram":"http://instagram.com"],
                ["Github":"http://github.com"],]
            
            let set = NSMutableIndexSet.init()
            var indexPaths = [NSIndexPath]()
            
            for index in 0..<new.count {
                weakSelf!.sections.append(new[index])
                
                let indexPath = NSIndexPath(item: 0, section: index)
                
                indexPaths.append(indexPath as NSIndexPath)
                set.add(index)
            }
            
            weakSelf!.collectionView?.insertSections(set as IndexSet)
            weakSelf!.collectionView?.insertItems(at: indexPaths as [IndexPath])
            }, completion: { (com: Bool) in
                
        })
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
