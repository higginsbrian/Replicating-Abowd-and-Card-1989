function m = fun_m_q3(c)
    %pass in c(i) and it will send out m(i)

m = [] ;
%gg
for i = 1:27 
   m = [m; c(i,2+i:29)' ]  ;
end
%hh
for i = 1:27 
   m = [m; c(29+i,31+i:58)' ] ;
end 
% gh
for i = 1:27 
   m = [m; c(i,31+i:58)' ]  ;
end

% hg
 for i = 1:27 
    m = [m; c(31-i,30:57-i)' ] ;
 end 


 
end
