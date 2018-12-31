graph(g2, [[2,1], [2,4], [1,3], [1,4], [3,2], [3,5], [5,6], [6,3], [4,2]]).
graph(g1, [[1,2], [2,3], [3,1], [3,4], [4,2], [4,5]]).

edge(g1, 1, 2).
edge(g1, 2, 3).
edge(g1, 3, 1).
edge(g1, 3, 4).
edge(g1, 4, 2).
edge(g1, 4, 5).

edge(g2, 2, 1).
edge(g2, 2, 4).
edge(g2, 1, 3).
edge(g2, 1, 4).
edge(g2, 3, 2).
edge(g2, 3, 5).
edge(g2, 5, 6).
edge(g2, 6, 3).
edge(g2, 4, 2).

isTriangle(G, V1, V2, V3):- edge(G, V1, V2), edge(G, V2, V3), edge(G, V3, V1).
edgecounter(G, Y):- findall(I,isTriangle(G,I,O,P),L),length(L,X), Y is X/3 .
countTriangles(G, Y):-edgecounter(G, Y).
