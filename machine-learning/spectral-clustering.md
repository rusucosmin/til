# Spectral Clustering

## The algorithm

Given a graph:
1. Take the graph Laplacian:
$L = D - A$

2. Find the top k eigenvectors of L (the spectral embedding)

3. Run an Euclidean algorithm (e.g., k-means) for the "rounding"

