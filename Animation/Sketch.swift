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
        a = -100.0/2500.0
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        // Change position
        x += 1
        
        //make it quadratic
        //factored form
        
        y = Int(a * Double(x) * (Double(x)-100))
        
        
        canvas.translate(byX: x, byY: y)
        
        // get rid of borders
        canvas.drawShapesWithBorders = false
        
        
        for e in stride(from: -100, through: 500, by: 100) {
            
        // Draw an ellipse in the middle of the canvas
        canvas.drawEllipse(centreX: 0, centreY: e, width: 10, height: 10)
        
        
            
        }
    }
    
}

