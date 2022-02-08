circuit Math{
    
    //Note: Both sqrt are really slow.

    function sqrt_bab(a: u64) -> u64{
        let initial_guess: u64 = 1 + a/2;
        let x: u64 = initial_guess;
        for i in 0..6 {
            x = (x+a/x)/2;
        }
        return x; 
    }

    function sqrt_bakshali(s: u64) -> u64{
        let initial_guess: u64 = 1 + s/2;
        let x: u64 = initial_guess;
        for i in 0..3 {
            let a = (s-x*x)/(2*x);
            let b = x + a;
            x = b - a*a/2*b;
        }
        return x; 
    }
}