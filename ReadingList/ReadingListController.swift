//
//  ReadingListController.swift
//  ReadingList
//
//  Created by Thomas Morel on 5/16/19.
//  Copyright © 2019 Thomas Morel. All rights reserved.
//
import UIKit
import ReadingListModel

class ReadingListController: UITableViewController
{


    @IBOutlet var dataSource: ReadingListDataSource!

    // this is attached to the "Cancel" button on the ReadingList Add a Book view
    @IBAction func cancel(unwindSeque: UIStoryboardSegue){

        

    }

    // the is attached to the "Done" button on the ReadingList Add a Book view
    @IBAction func done(unwindSeque: UIStoryboardSegue){

        dataSource.save()
        tableView.reloadData()

    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let controller = segue.realDestination as? BookDetailController,
        let indexPath = tableView.indexPathForSelectedRow else {
            fatalError("no \(BookDetailController.self) available")
        }

        controller.book = dataSource.book(at: indexPath)

    }


}

//extension ReadingListController
//{
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 100
//    }
//
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Book Summary") else{
//            fatalError("bad cell")
//        }
//
//       cell.textLabel?.text = "Row \(indexPath.row + 1)"
//
//        return cell
//    }
//
//}
