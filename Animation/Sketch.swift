import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    var a : Double
    var y : Int
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 0
        y = 0
        a = 500/(250 * -250)
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        // Change position
        x += 1
        
        //make it quadratic
        //factored form
        
        y = Int(a * Double(x) * (Double(x)-500))
        
        
        canvas.translate(byX: x, byY: y)
        
        
        // get rid of borders
        canvas.drawShapesWithBorders = false
        
        // Draw an ellipse in the middle of the canvas
        canvas.drawEllipse(centreX: 0, centreY: 0, width: 50, height: 50)
        
    }
    
}
