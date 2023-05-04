% Programming Exercise 6: Programming in Logic 2
% by Meekah Yzabelle A. Carballo and Khublei Mo Satori Pelayo

% Clues:

% The slayer had pink eyebrows
slayer(X) :- eyebrows(X, pink).

% Nobita had a pendant
costume(nobita, pendant).
% Pope had a G-Shock
costume(pope, g-shock).
% if Kudo had a fancy bracelet, then Conan wore shades 
costume(conan, shades) :- costume(kudo, fancy_bracelet).
% and vice versa
costume(kudo, shades) :- costume(conan, fancy_bracelet).
% a person that has a fancy bracelet, then they were in room 23
costume(X, fancy_bracelet) :- location(X, 23).

% a person has brown eyebrows if they were in room 27
eyebrows(X, brown) :- location(X, 27).
% a person has silver eyebrows if they were in room 25
eyebrows(X, silver) :- location(X, 25).
% a person has pink eyebrows if they wore the shades
eyebrows(X, pink) :- costume(X, shades).
% a person has yellow eyebrows if they wore a fancy bracelet
eyebrows(X, yellow) :- costume(X, fancy_bracelet).

% nobita was in room 25
location(nobita, 25).
% kudo was in room 29
location(kudo, 29).
% conan was in room 23
location(conan, 23).
% if the person was wearing a g-shock, then he was in room 27
location(X, 27) :- costume(X, g-shock).