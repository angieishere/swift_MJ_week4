//
//  album.swift
//  week4
//
//  Created by Angie Kim on 2020/11/07.
//  Copyright © 2020 Angie Kim. All rights reserved.
//

import Foundation
import UIKit


struct album {
    var albumName:String
    var imageName:String
    
    func makeImage() -> UIImage? {
        return UIImage(named: imageName)
    }

}
