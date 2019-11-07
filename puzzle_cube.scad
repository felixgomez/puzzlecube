/** Puzzle cube 6 pieces (3x3x3 base cubes) */

size = 10; // base cube length (mm)

module base_cube() {
    cube(size*[1, 1, 1]);
}

piece_1 = [
        [0, 0, 0],
        [0, 1, 0],
        [1, 0, 0],
        [2, 0, 0]
    ];

piece_2 = [
        [0, 0, 0],
        [1, 0, 0],
        [2, 0, 0],
        [1, 1, 0]
    ];

piece_3 = [
        [0, 0, 0],
        [1, 0, 0],
        [2, 0, 0],
        [1, 1, 0],
        [1, 1, 1]
    ];

piece_4 = [
        [0, 0, 0],
        [1, 0, 0],
        [2, 0, 0],
        [1, 1, 0],
        [2, 0, 1]
    ];
    
piece_5 = [
        [0, 0, 0],
        [1, 0, 0],
        [0, 1, 0],
        [0, 1, 1]
    ];    

piece_6 = [
        [1, 0, 0],
        [2, 0, 0],
        [0, 1, 0],
        [1, 1, 0],
        [1, 1, 1]
    ];

module draw(points) {
    for (p=points) {
        union() {
            translate(size*p)
            base_cube();
        }
    }
}

/* Uncomment to draw selected piece */

//draw(piece_1);
//draw(piece_2);
//draw(piece_3);
//draw(piece_4);
//draw(piece_5);
//draw(piece_6);
