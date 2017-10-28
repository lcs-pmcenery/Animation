import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    //introduce the variable 'offest'
    var offset : Int
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
            //
        offset = 250
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
    
        
        // Change position
        offset += 1
        //drawing the 3 ellipses going right
        canvas.drawShapesWithBorders = false
        canvas.fillColor = Color.green
        canvas.drawEllipse(centreX: offset, centreY: 250, width: 50, height: 50)
        
        canvas.fillColor = Color.purple
        canvas.drawEllipse(centreX: offset, centreY: 450, width: 50, height: 50)
        
        canvas.fillColor = Color.black
        canvas.drawEllipse(centreX: offset, centreY: 50, width: 50, height: 50)
        //these ones will go bakwards (left)
        canvas.fillColor = Color.orange
        canvas.drawEllipse(centreX: 500 - offset, centreY: 350, width: 50, height: 50)
        
        canvas.fillColor = Color.blue
        canvas.drawEllipse(centreX: 500 - offset, centreY: 150, width: 50, height: 50)
    }
}
