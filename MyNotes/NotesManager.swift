//
//  NotesManager.swift
//  MyNotes
//
//  Created by Fernando Serapio on 10/7/14.
//  Copyright (c) 2014 DevMakila. All rights reserved.
//

import UIKit

var Manager:NotesManager = NotesManager()

struct Note {
    var name = "Default name"
    var description = "Default description"
}

class NotesManager: NSObject {
   var notes = [Note]()
    
    func addNote(name: String, description: String) {
        notes.append(Note(name: name, description: description))
    }
}
