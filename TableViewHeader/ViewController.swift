//
//  ViewController.swift
//  TableViewHeader
//
//  Created by MAC on 2019/9/29.
//  Copyright © 2019 MAC. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
 
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(self.tableView)
    }
    
    lazy var headImageView: UIImageView = {
        let headImageView = UIImageView()
        headImageView.frame = CGRect.init(x: 0, y: -200, width: KScreenWidth, height: 200)
        headImageView.contentMode = .scaleAspectFill
        headImageView.image = UIImage.init(named: "testPhoto")
        headImageView.clipsToBounds = true
        return headImageView
    }()
        
        lazy var tableView: UITableView = {
            let tableView = UITableView()
            tableView.frame = CGRect(x: 0, y: 0, width: KScreenWidth, height: KScreenHeight )
            tableView.delegate = self
            tableView.dataSource = self
            tableView.register(UINib(nibName:"CoverCell", bundle:nil),
                              forCellReuseIdentifier:"CoverCell")
            tableView.addSubview(self.headImageView)
            tableView.contentInset = UIEdgeInsets(top: 400-200, left: 0, bottom: 0, right: 0)
            return tableView
        }()
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 7
        }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    // 設置 cell 的高度
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:CoverCell = tableView.dequeueReusableCell(withIdentifier: "CoverCell")
            as! CoverCell
        cell.numLabel.text = String(indexPath.item)
        return cell
    }
        
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let offsetY = scrollView.contentOffset.y
        let radius = -offsetY/200
        if (-offsetY > 200){
            headImageView.transform = CGAffineTransform.init(scaleX: radius, y: radius)
            var frame = headImageView.frame
            frame.origin.y = offsetY
            headImageView.frame = frame
        }
    }
  
}

