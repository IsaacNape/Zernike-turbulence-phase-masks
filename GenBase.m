function [Base] = GenBase(H,V, dx, dy)
% GenBase generates a data struct with all the neccesary meshgrid parameters, i.e catesial coordinates , polar...
% H (V) is the number of Horizontal (Vertical) pixels 
% dx and dy are the horizontal and vertical pixel sizes 

y = linspace(-(V/2),(V/2)-1,V).* dx; 
x = linspace(-(H/2),(H/2)-1,H).* dy;

Base.dx=dx;
Base.dy=dy;

Base.H=H; Base.V=V;


[Base.X, Base.Y] = meshgrid(x,y);%Cartesian coordinates 
[Base.phi, Base.r]=cart2pol(Base.X,Base.Y);%polar coordinates 
