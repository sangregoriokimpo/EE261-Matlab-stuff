% Step 1: Define symbolic variables
syms Vb Vc Vd

% Step 2: Define the equations
eq1 = (Vb / 5) + ((Vb - Vc) / 10) + ((Vb - Vd) / 15) == 0;
eq2 = ((50 - Vc) / 30) + ((Vc - Vb) / 10) + ((Vc - Vd) / 20) == 0;
eq3 = ((Vd - Vc) / 20) + ((Vd - Vb) / 15) + (Vd / 25) == 0;

% Step 3: Solve the system of equations
solution = solve([eq1, eq2, eq3], [Vb, Vc, Vd]);

% Step 4: Display the solutions
Vb_solution = solution.Vb;
Vc_solution = solution.Vc;
Vd_solution = solution.Vd;

disp(Vb_solution)
disp(Vc_solution)
disp(Vd_solution)
