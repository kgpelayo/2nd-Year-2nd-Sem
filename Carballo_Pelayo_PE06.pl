
%   nobita has a pendant
costume(nobita, pendant).
%   pope has G-Shock
costume(pope, 'G-Shock').
%   if kudo wore shades ----
costume(kudo, fancy_bracelet).
%   then conan wore fancy bracelet and vice versa
costume(conan, shades).

%   pink eyebrows if shades
eyebrows(X, pink) :- costume(X, shades).
%   yellow eyebrows if fancy bracelet
eyebrows(X, yellow) :- costume(X, fancy_bracelet).
%   brown eyebrows if room 27
eyebrows(X, brown) :- location(X, 27).
%   silver eyebrows if room 25
eyebrows(X, silver) :- location(X, 25).


%   nobita in room 25
location(nobita, 25).
%   kudo in room 29
location(kudo, 29).
%   conan in room 23
location(conan, 23).
%   if gshock, then room 27
location(X, 27) :- costume(X, 'G-Shock').
%   if fancy bracelet, room 23
location(X, 23) :- costume(X, fancy_bracelet).


%   slayer had (pink eyebrows)
slayer(X) :- eyebrows(X, pink), location(X, _), costume(X, _).
