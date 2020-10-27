var rect = require('./rectangle')
function solverect (l,b){
console.log('solveing area and perimeter for l ='+l+'and breadth ='+b+' is: ')
  
   rect(l,b,(err,rectangle)=>{
    if(err){
        console.log("error:",err.message);
    }
    else{
        console.log("the area of rectangle for length = "+l+"and breadth = "+b+" is "+rectangle.area());
        console.log("the perimeter of rectangle for length = "+l+"and breadth = "+b+" is "+rectangle.perimeter());
    }
   });
}

solverect(3,5);
solverect(2,3);
solverect(8,9);
