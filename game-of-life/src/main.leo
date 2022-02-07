// The 'game-of-life' main function.
circuit GameOfLife {

    //Grid needs to be surrounded by a frame
    //So the actual dimensions are the numbers - 2 in each dimension
    
    //This is like that because leo tries to generate the circuit as if
    //it needs to access -1 position, even with an if, which results in an 
    //out of bond error
    grid: [u8; (5, 5)],

    function new(grid: [u8; (5, 5)]) -> Self { 
        return Self { grid: grid };
    }

    function next_generation (self) -> [u8; (5, 5)] {
        let next_grid: [u8; (5, 5)] = [0;(5,5)];

        for i in 1..4 {
            for j in 1..4 {
                let alive_neighbours: u8 = 0;
                for u in 0..3 {
                    for v in 0..3 {
                        let x: u32 = i+u-1;
                        let y: u32 = j+v-1;
                        if (x > 0) && (y > 0) && (x < 4) && (y < 4) && (u != 1 || v != 1){    
                            alive_neighbours += self.grid[x][y];
                        }
                    }
                }
                console.log("[{},{}] alive: {}",i,j,alive_neighbours);
            }
        }

        return self.grid;
    }
}

function main(grid: [u8; (5, 5)]) -> [u8; (5, 5)] {

    let game: GameOfLife = GameOfLife::new(grid);
    return game.next_generation();
}
