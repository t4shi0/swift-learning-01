//
//  ViewController.swift
//  swift-learning-01
//
//  Created by Ryusei Tashiro on 2017/11/07.
//  Copyright © 2017年 Ryusei Tashiro. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    let stores = ["だっちゃ", "瀬里奈"]
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // セルの個数を定義
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stores.count
    }
    
    // セルに値を渡す
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // セルを取得
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        
        // セルに表示する値の設定
        cell.textLabel?.text = stores[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // セルの番号と内容をとりあえず出力
        print("セル番号：\(indexPath.row) セルの内容：\(stores[indexPath.row])")
    }
}
