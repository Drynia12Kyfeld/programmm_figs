/* имя, вес, длина, высота, еда */
animal(polar_bear, 450, 250, 150, animal).
animal(wolf, 110, 212, 90, animal).
animal(moose, 600, 300, 230, plant).
animal(amur_tiger, 306, 330, 60, animal).
animal(zebra, 370, 220, 150, plant).
heavy(X,Y) :- animal(X, Y, _, _, _), Y >= 400. /*heavy(X,Y)*/
light(X,Y) :- animal(X, Y, _, _, _), Y < 400. /*light(X,Y)*/
long(X,Y) :- animal(X, _, Y, _, _), Y >= 300. /*long(X,Y)*/
short(X,Y) :- animal(X, _, Y, _, _), Y < 300. /*short(X,Y)*/
high(X,Y) :- animal(X, _, _, Y, _), Y >= 200. /*high(X,Y)*/
low(X,Y) :- animal(X, _, _, Y, _), Y < 200. /*low(X,Y)*/
predator(X,Y) :- animal(X, _, _, _, Y), Y == animal. /*predator(X,Y)*/
herbivore(X,Y) :- animal(X, _, _, _, Y), Y == plant. /*herbivore(X,Y)*/