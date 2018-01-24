//
//  ViewController.swift
//  sampleMiniGuidebook
//
//  Created by Eriko Ichinohe on 2018/01/24.
//  Copyright © 2018年 Eriko Ichinohe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //テーブルビューで使用するため、メンバ変数として宣言
    var areaList:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //ファイルパスを取得
        let path = Bundle.main.path(forResource: "areaList", ofType: "plist")
        
        //ファイルの内容を読み込んでディクショナリー型に格納
        let dic = NSDictionary(contentsOfFile:path!)
        
        //配列に、エリア名（キー）を保存
        
        for (key,data) in dic!{
            areaList.append(key as! String)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

