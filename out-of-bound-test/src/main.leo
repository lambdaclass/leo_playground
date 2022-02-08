// The 'out-of-bound-test' main function.
function main() -> u32 {
    
    let array: [u32;5] = [0,1,2,3,4];

    for i in 0..6{
        if(i < 4){
            console.log("i: {}",i);
            console.log("array[{}]:{}",i,array[i]);
        }
    }

    return 0;
}
