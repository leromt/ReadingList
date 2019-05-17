//
//  BookDetailController.swift
//  ReadingList
//
//  Created by Thomas Morel on 5/16/19.
//  Copyright © 2019 Thomas Morel. All rights reserved.
//

import UIKit
import ReadingListModel

class BookDetailController: UITableViewController
{

    //grab the book being passed to the detail controller

    var book: Book?
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!


    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        populateCells()

    }

    private func populateCells(){
        titleLabel.text = book?.title
        yearLabel.text = book?.year
        firstNameLabel.text = book?.author?.firstName
        lastNameLabel.text = book?.author?.lastName

    }

    // this is attached to the "Cancel" button on the BookDetail Edit a Book view

    @IBAction func cancel(unwindSeque: UIStoryboardSegue){



    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let controller = segue.realDestination as? EditBookController else {
            fatalError("Expected Destination to be \(EditBookController.self)")
        }
        controller.book = book
    }


}
