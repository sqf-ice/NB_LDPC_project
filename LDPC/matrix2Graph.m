function H = matrix2Graph(H,fn)
[M,N] = size(H);
[I,J]=ind2sub([M,N],find(H)); %Find position of 1s
edges=size(I,1);
F = fopen(fn,’w’);
%Print number of vertices and edges
fprintf(F,’%d %d\n’,(M+N),edges);
%Print bit nodes
for i=1:N
fprintf(F,’%d ’,N+I(find(J==i))’);
fprintf(F,’\n’);
end
%Print check nodes
for i=1:M
fprintf(F,’%d ’,J(find(I==i))’);
fprintf(F,’\n’);
end
fclose(F);
