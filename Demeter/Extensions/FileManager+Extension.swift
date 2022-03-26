//
//  FileManager+Extension.swift
//  Demeter
//
//  Created by Paul Addai on 3/26/22.
//

import UIKit

let fileName = ""

extension FileManager {
    static var docDirURL: URL {
        return Self.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    }
    
    func docExist(named docName: String) -> Bool {
        fileExists(atPath: Self.docDirURL.appendingPathComponent(docName).path)
    }
}

