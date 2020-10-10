function [Base] = GenBase(H,V, dx, dy)
%H = 608;
%V = 684;
y = linspace(-(V/2),(V/2)-1,V).* dx;
x = linspace(-(H/2),(H/2)-1,H).* dy;
Base.dx=dx;%=3.699./H;
Base.dy=dy;%6.5718./V;
Base.H=H; Base.V=V;
%x = x*Base.dx;%%Scales the hologram in the V direction
%y = y*Base.dy;%%Scales the hologran in the H direction
[Base.X, Base.Y] = meshgrid(x,y);
[Base.phi, Base.r]=cart2pol(Base.X,Base.Y);
