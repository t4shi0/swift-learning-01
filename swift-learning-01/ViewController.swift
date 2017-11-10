//
//  ViewController.swift
//  swift-learning-01
//
//  Created by Ryusei Tashiro on 2017/11/07.
//  Copyright © 2017年 Ryusei Tashiro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let imageNames = ["store1.jpg", "store2.jpg"]
    let imageTitles = ["だっちゃ", "瀬里奈"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

// ViewControllerの拡張
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    // セルの個数を定義
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageTitles.count
    }
    
    // セルに値を渡す
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // セルを取得
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath) as! CustomTableViewCell
        
        // セルに表示する値の設定
        cell.myImageView?.image = UIImage(named: imageNames[indexPath.row])
        cell.myTitleLabel?.text = imageTitles[indexPath.row]
        
        return cell
    }
    
    // セルが選択された
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // セルの番号と内容をとりあえず出力
        print("セル番号：\(indexPath.row) セルの内容：\(imageTitles[indexPath.row])")
    }
}
