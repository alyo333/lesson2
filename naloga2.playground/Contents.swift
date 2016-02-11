import UIKit

class toDoTask {
    var name: String
    var dateAdded: NSDate?
    var dateChanged: NSDate?
    var taskState: toDoTask.state
    var taskPriority: toDoTask.priority
    enum state: String {
        case done = "Done"
        case notDone = "Not Done"
    }
    enum priority{
        case low
        case high
    }
    
    func description () -> String {
        return("Task:\(name) was added \(dateAdded) and has \(taskPriority) priority. The task is \(taskState)")
    }
    init() {
        name = "name"
        taskState = state.notDone
        taskPriority = priority.low
    }
}

