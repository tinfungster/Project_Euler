### A Pluto.jl notebook ###
# v0.12.7

using Markdown
using InteractiveUtils

# ╔═╡ bff7f1e0-212b-11eb-0149-ed5bc1197f8b
# I used the Images Package.

using Images

# ╔═╡ d7b16030-2123-11eb-0cea-bf0b04b9f172
md"# Hello!
### This is my third Project Euler question! In this question, I will be trying to find the largest prime factor of the number: 600,851,475,143 ! "

# ╔═╡ c945b7d2-2128-11eb-3bc5-6f1da4fe5115
number = 600851475143

# ╔═╡ c4b7cb40-2128-11eb-2a57-333c8475e6d8
md"## What even is a prime number?"

# ╔═╡ f6687700-2125-11eb-3dea-cd257bcf1809
md"### A prime number is a number with only two factors - one and itself."

# ╔═╡ 13435e50-2129-11eb-3c21-9b3876d9c8f0
md"##### List of Prime numbers: 2, 3, 5, 7, 11 ..."

# ╔═╡ 35f18ad0-2129-11eb-33d3-e599a59910ce
md"### I cannot just **brute-force** and divide 600,851,475,143 by every number between 1 and the number."

# ╔═╡ c1d11420-212a-11eb-26da-ed0f2336bff4
md"## This is why I am using the Sieve of Eratosthenes to calculate a list of prime numbers up to 600,851,475,143 ."

# ╔═╡ 4523b9b0-2133-11eb-11fd-855e41b99d21
md"### This is the _Sieve of Eratosthenes_. It is a sieve that filters out the composite numbers and only primes remain."

# ╔═╡ 382d31e0-2148-11eb-0783-15e4e05d35c4
function Sieve_Eratosthenes(x)
	y = 1:x
	y.^1
end

# ╔═╡ aec527f0-283b-11eb-1d14-13bce147a4c7
Sieve_Eratosthenes(100)

# ╔═╡ 1f49e600-2855-11eb-1cb5-537b9494e376
countries = ["America", "UK", "Hong Kong", "Canada", "Japan", "Taiwan", "India", "Kenya"]

# ╔═╡ c081a3c0-290c-11eb-2182-8de89de4b8f4
countries

# ╔═╡ e8f09782-290c-11eb-0013-d715def4cf7f
countries[6] = "Taiwan"

# ╔═╡ 9dd279fe-2855-11eb-37b7-3b20511c9e03
Tuple = ("America", "UK", "Hong Kong", "Canada", "Japan", "Taiwan", "India", "Kenya")

# ╔═╡ b54aee10-2855-11eb-052c-db94049259c0
Tuple[1] 

# ╔═╡ f50fb2b0-2855-11eb-1512-9faddf7ed772
countries[1] = "Mexico"

# ╔═╡ 146da2c0-2856-11eb-0662-29fa86a13c86
countries

# ╔═╡ 65894c00-2855-11eb-08ab-1b755fd41fa3
countries[8]

# ╔═╡ 2d8f58ce-283c-11eb-02ee-ad6b2242de59
[1, 2, 3]

# ╔═╡ 4e7a4750-2132-11eb-3c69-97021bf77041
md"# Appendix"

# ╔═╡ 9cc9a370-212c-11eb-3e55-8b1f4ec8ce2d
# I found a good diagram on the internet.

Image = load(download("https://www.cut-the-knot.org/Curriculum/Arithmetic/Eratosthenes.jpg"))

# ╔═╡ 15fb6022-212e-11eb-08f5-37d4443e81a1
size(Image)

# ╔═╡ 0f318d50-212e-11eb-284d-1522f5c7810c
# I cropped the original image.

Sieve_of_Eratosthenes = Image[35:502, 30:511]

# ╔═╡ f08b7b90-212d-11eb-3d4f-5120c5327fe8
Sieve_of_Eratosthenes

# ╔═╡ Cell order:
# ╟─d7b16030-2123-11eb-0cea-bf0b04b9f172
# ╟─c945b7d2-2128-11eb-3bc5-6f1da4fe5115
# ╟─c4b7cb40-2128-11eb-2a57-333c8475e6d8
# ╟─f6687700-2125-11eb-3dea-cd257bcf1809
# ╟─13435e50-2129-11eb-3c21-9b3876d9c8f0
# ╟─35f18ad0-2129-11eb-33d3-e599a59910ce
# ╟─c1d11420-212a-11eb-26da-ed0f2336bff4
# ╠═f08b7b90-212d-11eb-3d4f-5120c5327fe8
# ╟─4523b9b0-2133-11eb-11fd-855e41b99d21
# ╠═382d31e0-2148-11eb-0783-15e4e05d35c4
# ╠═aec527f0-283b-11eb-1d14-13bce147a4c7
# ╠═1f49e600-2855-11eb-1cb5-537b9494e376
# ╠═c081a3c0-290c-11eb-2182-8de89de4b8f4
# ╠═e8f09782-290c-11eb-0013-d715def4cf7f
# ╠═9dd279fe-2855-11eb-37b7-3b20511c9e03
# ╠═b54aee10-2855-11eb-052c-db94049259c0
# ╠═f50fb2b0-2855-11eb-1512-9faddf7ed772
# ╠═146da2c0-2856-11eb-0662-29fa86a13c86
# ╠═65894c00-2855-11eb-08ab-1b755fd41fa3
# ╠═2d8f58ce-283c-11eb-02ee-ad6b2242de59
# ╟─4e7a4750-2132-11eb-3c69-97021bf77041
# ╠═bff7f1e0-212b-11eb-0149-ed5bc1197f8b
# ╠═9cc9a370-212c-11eb-3e55-8b1f4ec8ce2d
# ╠═15fb6022-212e-11eb-08f5-37d4443e81a1
# ╠═0f318d50-212e-11eb-284d-1522f5c7810c
