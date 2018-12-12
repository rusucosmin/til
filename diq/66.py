import numpy as np

def count_fr(n, m, mat):
  fr = [0, 0]
  for i in range(n):
    for j in range(m):
      fr[mat[i][j] % 2] += 1
  return fr[0], fr[1]

def count_np(n, m, mat):
  even = (np.array(mat) % 2 == 0).sum()
  odd = n * m - even
  return even, odd


print("----- classic iteration -------")
fr0, fr1 = count_fr(2, 3, [[9, 11, 3], [4, 12, 2]])
print(f"Frequency of odd #: {fr1}")
print(f"Frequency of even #: {fr0}")

print("\n\n----- numpy solution -------")
fr0, fr1 = count_fr(2, 3, [[9, 11, 3], [4, 12, 2]])
print(f"Frequency of odd #: {fr1}")
print(f"Frequency of even #: {fr0}")

