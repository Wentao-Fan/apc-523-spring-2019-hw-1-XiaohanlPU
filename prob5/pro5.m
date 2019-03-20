fid = fopen('Limits.txt','wt');
fprintf(fid,'n\t(1+1/n)^n\n');
 
for i = 1:500
    
    n_1 = 10^(i-1);
    n_2 = 10 * n_1;
    e_1 = (1 + 1/n_1)^n_1;%the first e value in the ith trial
    e_2 = (1 + 1/n_2)^n_2;% the second e value in the ith trial
    e_diff = round(e_1-e_2,13,'significant');%calculate the difference between success e value
 
    if e_diff == 0%see whether they agree to 12 significant figures
        fprintf(fid,'%d\t%.12f\n',i-1,e_1);%print the  intermediate value in ith trial
        fprintf(fid,'%d\t%.12f\n',i,e_2);%print the  final value in ith trial
        break;
    else
        fprintf(fid,'%d\t%.12f\n',i-1,e_1);% print the first intermediate value in ith trial
    end
    
end
 
fprintf(fid,'final value %.12f\n',e_2);%printf final convergened value e_2
fprintf(fid,'nstop %d\n',i);%nstops equals final value of i
   
