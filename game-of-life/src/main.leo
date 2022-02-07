// The 'game-of-life' main function.
circuit GameOfLife {
    grid: [u8; (5, 5)],

    function new(grid: [u8; (5, 5)]) -> Self { 
        return Self { grid: grid };
    }

    function next_generation (self) -> [u8; (5, 5)] {
        let next_grid: [u8; (5, 5)] = [0;(5,5)];

        for i in 0..5 {
            for j in 0..5 {
                let alive_neighbours: u8 = 0;
                for u in 0..3 {
                    for v in 0..3 {
                        if ((i-1+u >= 0) && (j-1+v >= 0) && (i-1+u < 5) && (j-1+v < 5)) {
                            console.log("[{},{}]",i-1+u,j-1+v);
                            alive_neighbours += self.grid[i-1+u][j-1+v];
                        } 
                    }
                }
            }
        }

        return self.grid;
    }
}

function main(grid: [u8; (5, 5)]) -> [u8; (5, 5)] {

    let game: GameOfLife = GameOfLife::new(grid);
    return game.next_generation();
}
