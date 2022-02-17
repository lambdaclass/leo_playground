// The 'math' main function.

import math.(Math);
import hash.(Hash);
//Division: 82364 constraints
//Check division: 
function main() -> bool {
    console.log("Sqrt babylonian method of 1000000 = {}", Math::sqrt_bab(1000000));
    //While these functions are pretty straighforward
    //It's interesting to compare the amount of constraint generated
    //when doing comparisons to validate inptus and when calculating the operations
    console.log("Is 10 / 2 == 5 ? {}", Math::verify_division(10,2,5));
    console.log("Is 8 / 2 == 5 ? {}", Math::verify_division(8,2,5));
    console.log("Is sqrt(1000000)=1000 ? {}", Math::verify_sqrt(1000000,100));
    console.log("Is sqrt(800000)=1000 ? {}", Math::verify_division(800000,2,5));

    let a = 10field;  
    console.log("10field: {}", a);
    console.log("mimc 10field: {}", Hash::mimc(b));

    return true;
}
