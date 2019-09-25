function [X,C] = sudoku(X) 
 % SUDOKU  Solve Sudoku using recursive backtracking. 
 %   sudoku(X), expects a 9-by-9 array X. 
 % Fill in all “singletons”. 
 % C is a cell array of candidate vectors for each cell. 
 % s is the first cell, if any, with one candidate. 
 % e is the first cell, if any, with no candidates. 
 %[C,s,e] = candidates_2(X); 
 [C,s,e] = candidate(X);
  while ~isempty(s) && isempty(e) 
     X(s) = C{s}; 
     [C,s,e] = candidate(X); 
  end 
  
   % Recursive backtracking. 
  if any(X(:) == 0) 
     Y = X; 
     z = find(X(:) == 0,1);    % The first unfilled cell. 
     for r = [C{z}]            % Iterate over candidates. 
        X = Y; 
        X(z) = r;              % Insert a tentative value. 
        X = sudoku(X);         % Recursive call. 
        if all(X(:) > 0)       % Found a solution. 
           return 
        end 
     end 
  end 
end
 