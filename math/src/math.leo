circuit Math{
    
    //Note: Both sqrt are really slow.

    function sqrt_bab(a: u64) -> u64{
        let initial_guess: u64 = 1 + a/2;
        let x: u64 = initial_guess;
        for i in 0..20 {
            x = (x+a/x)/2;
        }
        return x; 
    }

    function sqrt_bakshali(s: u64) -> u64{
        let initial_guess: u64 = 1 + s/2;
        let x: u64 = initial_guess;
        for i in 0..8 {
            let a = (s-x*x)/(2*x);
            let b = x + a;
            x = b - (a*a)/(2*b);
        }
        return x; 
    }

    //We want to check if sqrt(x) = hint, and since we have integers,
    //we add a range
    function verify_sqrt(x: u64, hint: u64) -> bool{
        let expected_value: u64 = (hint*hint);
        return expected_value == hint ;
    }

    //We want to check if x / y = hint
    function verify_division(x:u64, y:u64, hint: u64) -> bool{
        return (hint*y) == x;
    }

    function mimc(x:field) -> field{
        const secret_key: field = 1337;
        for i in 0..220{
            x = x*x*x + secret_key;
        }
        return x;
    }

    function mimc7(x:field) -> field{
        const secret_key: field = 1337;
        for i in 0..220{
            x = x*x*x*x*x*x*x + secret_key;
        }
        return x;
    }
}
