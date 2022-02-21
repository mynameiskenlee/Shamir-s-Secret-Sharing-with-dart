# Shamir's Secret Sharing

Shamir’s Secret Sharing is an algorithm in cryptography created by Adi Shamir. It is a form of secret sharing, where a secret <img src="https://render.githubusercontent.com/render/math?math=m"> is divided into <img src="https://render.githubusercontent.com/render/math?math=n"> parts, giving each participant its own unique part. To reconstruct the original secret, a minimum number <img src="https://render.githubusercontent.com/render/math?math=k"> of parts is required.

Suppose we want to use a <img src="https://render.githubusercontent.com/render/math?math=(k,n)"> threshold scheme to share our secret <img src="https://render.githubusercontent.com/render/math?math=m">, where <img src="https://render.githubusercontent.com/render/math?math=0 < k \leq n < P">;<img src="https://render.githubusercontent.com/render/math?math=m < P"> and <img src="https://render.githubusercontent.com/render/math?math=P"> is a prime number.

Choose random <img src="https://render.githubusercontent.com/render/math?math=k - 1"> positive integers <img src="https://render.githubusercontent.com/render/math?math=a_1,...,a_{k-1}"> with <img src="https://render.githubusercontent.com/render/math?math=a_i < P">. Build the polynomial <img src="https://render.githubusercontent.com/render/math?math=f(x) = m%2ba_1x%2ba_2x^2%2ba_3x^3%2b...%2ba_{k-1}x^{k-1} mod p">

Let us construct any n points out of it, for instance set <img src="https://render.githubusercontent.com/render/math?math=x = 1, ..., n"> to retrieve <img src="https://render.githubusercontent.com/render/math?math=(x_i, f(x_i))">. Every participant is given a point (a non-zero integer input to the polynomial, and the corresponding integer output) along with the prime which defines the finite field to use. Given any subset of <img src="https://render.githubusercontent.com/render/math?math=k"> of these pairs <img src="https://render.githubusercontent.com/render/math?math=(x_i, f(x_i))">, we can find the coefficients of the polynomial using interpolation. The secret is the constant term <img src="https://render.githubusercontent.com/render/math?math=m">.

Example:
```
Enter message:1155112410
Enter n:5
Enter k:3
P: 1155112423
Secret:
(1, 452597065)
(2, 216943235)
(3, 448150920)
(4, 1146220120)
(5, 925989)
```

