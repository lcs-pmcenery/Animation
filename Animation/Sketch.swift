import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle. We need two sets of variables, one for x and one for y
    var x : Int
    
    var dx : Int
    
    var y : Int
    
    var dy : Int
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = random(from: 0, toButNotIncluding: 501)
        
        y = random(from: 0, toButNotIncluding: 501)
        
        // Set the change value
        dx = 2
        
        dy = 2
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        // Clean up from last loop
        canvas.fillColor = Color.white
        canvas.drawRectangle(centreX: 250, centreY: 250, width: 500, height: 500)
        
        // Change position
        x += dx
        
        y += dy
        // This makes it bounce off the edges of the canvas
        if x > 500 {
            dx = -2
        }
        if x < 0 {
            dx = 2
        }
        
        if y > 500 {
            dy = -2
        }
        
        if y < 0 {
            dy = 2
        }
        // The ellipse that will stay on screen
        canvas.fillColor = Color.black
        canvas.drawEllipse(centreX: x, centreY: y, width: 50, height: 50)
        
       
    }
        
    }
