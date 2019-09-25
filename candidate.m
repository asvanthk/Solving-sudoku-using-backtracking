function [C,s,e] = candidate(X)
% X = 9x9 sudoku matrix
    C = cell(9);
    tri = @(k) 3*ceil(k/3-1) + (1:3);
    %C(:) = {1:9};
    k=1;
    while k<82
        if(X(k)==0) 
            [i,j] = ind2sub(size(X),k);
            t =1;
            s = 1:9;
            while t<=9
                if X(i,t)~=0
                    %C{k}(X(i,t))=0;
                    s(X(i,t)) = 0;
                end
                if X(t,j)~=0
                    %C{k}(X(t,j))=0;
                    s(X(t,j))= 0;
                end
                t = t+1;
            end
            s(nonzeros(X(tri(i),tri(j)))) = 0;
            C{k} = nonzeros(s)';
        end
            k = k+1;
    end
    
    L = cellfun(@length,C);  
    s = find(X==0 & L==1,1); 
    e = find(X==0 & L==0,1); 
                
end

