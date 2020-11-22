### A Pluto.jl notebook ###
# v0.12.7

using Markdown
using InteractiveUtils

# This Pluto notebook uses @bind for interactivity. When running this notebook outside of Pluto, the following 'mock version' of @bind gives bound variables a default value (instead of an error).
macro bind(def, element)
    quote
        local el = $(esc(element))
        global $(esc(def)) = Core.applicable(Base.get, el) ? Base.get(el) : missing
        el
    end
end

# ╔═╡ d47521c0-25d5-11eb-09e7-1934afa8689d
# I used these packages.

begin
	using PlutoUI
	using Images
end

# ╔═╡ 6ab4e9c0-114c-11eb-2d22-05776bd25df1
md"# Hello!
##### This is the second [Project Euler](https://projecteuler.net/archives) question where I find the sum of the even-valued terms of the Fibonacci Sequence under 4 million!"

# ╔═╡ 1524cf62-114d-11eb-3dc3-4debd151734b
md"# Use the slider to find Fibonacci Terms!"

# ╔═╡ 89b61e60-114d-11eb-0375-4bcab2fef870
md"##### If you slide the slider, you get the Fibonacci term!"

# ╔═╡ 22731370-25d9-11eb-049b-b546c56ec5ad
@bind fibonacciterm Slider(0:12 , show_value=true)

# ╔═╡ f9488b00-1157-11eb-22ed-bdc7f113fbe9
md"# How does it work?????"

# ╔═╡ 41c9f2c0-114d-11eb-0d12-11a7feced986
md"##### I am using Binet's Formula to calculate the terms in the Fibonacci Sequence!"

# ╔═╡ 168eb990-25db-11eb-28db-79e076dc7ea3
md"### Binet's Formula: "

# ╔═╡ f3cfe3e0-25dd-11eb-1fbc-9f9c70a63261
md"# $ \frac{\varphi ^ {n}}{\sqrt{5}} $ 
## $ \varphi $ is the golden ratio . "

# ╔═╡ 2bc5c920-25db-11eb-000b-bf9df6093842
md"##### I will expain the Golden Ratio in the next notebook. You just need to know that it is about 1.618 and instead of calling it Golden Ratio all the time, we use the Greek letter $ \varphi $."

# ╔═╡ e7abfa92-1147-11eb-2b44-159345577c2a
# The Golden Ratio!
φ = (1 + sqrt(5))/2

# ╔═╡ 3ee0f5de-1148-11eb-2039-93fa7b1be9af
# The Binet's Formula is :
# the golden ratio (~ 1.618) raised to the nth power and divide it by sqrt of 5 and rounding the answer to the nearest integer. The error approaches 0 as you approach the infinitely big terms!

begin
	a = (φ ^ fibonacciterm)/sqrt(5)
	b = round(Int, a)
end

# ╔═╡ 6ef159f2-1157-11eb-04fa-a9542f145bf1
# Grammar is IMPORTANT!!!

if fibonacciterm == 1
	md"##### The $fibonacciterm st term in the Fibonacci Sequence is $b."
elseif fibonacciterm == 2
	md"##### The $fibonacciterm nd term in the Fibonacci Sequence is $b."
elseif fibonacciterm == 3
	md"##### The $fibonacciterm rd term in the Fibonacci Sequence is $b."
else
	md"##### The $fibonacciterm th term in the Fibonacci Sequence is $b."
end

# ╔═╡ a3fef210-1b75-11eb-0311-5348902769b0
md"# I can calculate many Fibonacci Numbers at once!"

# ╔═╡ 96044e72-1b8f-11eb-0bd5-bf6b54c9464d
c = 99

# ╔═╡ a6b1de40-1b8f-11eb-0e31-f17fed3c148b
d = 0 : c

# ╔═╡ b05dc25e-1b8f-11eb-1a64-dd58a16b7dec
e = φ .^ d

# ╔═╡ b7dc3f30-1b8f-11eb-316d-af7911153b99
f = e/sqrt(5)

# ╔═╡ 83d045b0-1b8f-11eb-02e0-317499abf430
fibonacci_numbers = round.(f)

# ╔═╡ 40007ef0-2057-11eb-13c5-f7df94b8a45c
md"# I can just find the even-valued Fibonacci terms"

# ╔═╡ 5981e260-2057-11eb-14d6-eba9727f24a2
md"### Every third Fibonacci term is even!"

# ╔═╡ 651d1360-2057-11eb-3fbb-e7f27cb8358b
g = 100

# ╔═╡ cb4b9070-2058-11eb-3581-8577499eafc7
h = 1 : g

# ╔═╡ 6b0a8890-205a-11eb-2f7a-1fba9e2c34c0
i = φ .^ (3 * h)

# ╔═╡ 81033a70-205a-11eb-284a-3fa820bc460e
j = i / sqrt(5)

# ╔═╡ 9b287f00-205a-11eb-1a54-dba8016126e1
even_valued_fibonacci_numbers = round.(j)

# ╔═╡ c88ce7d0-1b85-11eb-292d-1da5aa66d749
md"# I control the size of the Fibonacci Numbers."

# ╔═╡ 09903500-1b88-11eb-0365-09cc57ba4c8c
md"##### I am just setting the domain for the Fibonacci Numbers because I do not want them to be too big (The even-valued Fibonacci terms cannot be greater than 4 million) ."

# ╔═╡ d1eb63b2-1b8f-11eb-085d-ebde562eb9db
# This will tell you which numbers are greater a certain number (4 million)in the terminal!

for k in 1 : g
	if even_valued_fibonacci_numbers[k] < 4000000
		println("The $(k) th term ($(even_valued_fibonacci_numbers[k])) is less than 4 million!")
		k + 1
	else
		println("The $(k) th term ($(even_valued_fibonacci_numbers[k])) is greater than 4 million!")
	end
end

# ╔═╡ cfaf4300-25da-11eb-04d8-0bfb97249bb2
md"# The results are in the terminal! "

# ╔═╡ eddc31c0-1b95-11eb-1282-892c325c95a6
# The terminal told me that the twelfth term is too big, but the eleventh one isn't.

upperbound = 11

# ╔═╡ 62313b10-1b96-11eb-08e9-d31d4ef0943f
l = 1 : upperbound

# ╔═╡ 6db45030-1b96-11eb-2c41-ed2e1c5441a6
m = φ .^ (3 * l)

# ╔═╡ 7f796a80-1b96-11eb-1582-7b4321ab93e7
n = m / sqrt(5)

# ╔═╡ 51c743f0-1b96-11eb-36c9-a9ce56cd8859
even_valued_fibonacci_terms_under_4_million = round.(n)

# ╔═╡ 1a2a1e20-205c-11eb-1462-c700d278e137
sum(even_valued_fibonacci_terms_under_4_million)

# ╔═╡ f295afd0-25d5-11eb-0e04-b386d7db338d
md"# The answer is 4,613,732! I got it right!"

# ╔═╡ 0d4225c0-25d6-11eb-1b80-cb6b323a7181
# I took a screenshot of Project Euler.

My_Image = load(download("https://i.imgur.com/V1pD1xR.png"))

# ╔═╡ db8154c0-25d5-11eb-0ddd-3b57dae3e708
md"# Extra Info"

# ╔═╡ af9236c0-25dc-11eb-0ffa-d724f99a5364
# The code is run in the REPL (Read, Eval, Print, Loop)

My_Image_2 = load(download("https://i.imgur.com/6Pb2xel.png"))

# ╔═╡ 08debbe0-25e7-11eb-1ec7-fb24a591077c
My_Image_2[532:1005, 545:1875]

# ╔═╡ 719b8920-25e1-11eb-2c6e-3f9ad3d236e4
md"# Epilogue"

# ╔═╡ 233dbcd0-25e1-11eb-26d3-f51fca7956d8
md"#### After doing this project, I developed a _completely autonomous algorithm_. I uploaded it on Google Classroom. Bye! "

# ╔═╡ Cell order:
# ╟─6ab4e9c0-114c-11eb-2d22-05776bd25df1
# ╟─1524cf62-114d-11eb-3dc3-4debd151734b
# ╟─89b61e60-114d-11eb-0375-4bcab2fef870
# ╠═22731370-25d9-11eb-049b-b546c56ec5ad
# ╠═6ef159f2-1157-11eb-04fa-a9542f145bf1
# ╟─f9488b00-1157-11eb-22ed-bdc7f113fbe9
# ╟─41c9f2c0-114d-11eb-0d12-11a7feced986
# ╟─168eb990-25db-11eb-28db-79e076dc7ea3
# ╠═f3cfe3e0-25dd-11eb-1fbc-9f9c70a63261
# ╟─2bc5c920-25db-11eb-000b-bf9df6093842
# ╠═e7abfa92-1147-11eb-2b44-159345577c2a
# ╠═3ee0f5de-1148-11eb-2039-93fa7b1be9af
# ╟─a3fef210-1b75-11eb-0311-5348902769b0
# ╠═96044e72-1b8f-11eb-0bd5-bf6b54c9464d
# ╠═a6b1de40-1b8f-11eb-0e31-f17fed3c148b
# ╠═b05dc25e-1b8f-11eb-1a64-dd58a16b7dec
# ╠═b7dc3f30-1b8f-11eb-316d-af7911153b99
# ╠═83d045b0-1b8f-11eb-02e0-317499abf430
# ╟─40007ef0-2057-11eb-13c5-f7df94b8a45c
# ╟─5981e260-2057-11eb-14d6-eba9727f24a2
# ╠═651d1360-2057-11eb-3fbb-e7f27cb8358b
# ╠═cb4b9070-2058-11eb-3581-8577499eafc7
# ╠═6b0a8890-205a-11eb-2f7a-1fba9e2c34c0
# ╠═81033a70-205a-11eb-284a-3fa820bc460e
# ╠═9b287f00-205a-11eb-1a54-dba8016126e1
# ╟─c88ce7d0-1b85-11eb-292d-1da5aa66d749
# ╟─09903500-1b88-11eb-0365-09cc57ba4c8c
# ╠═d1eb63b2-1b8f-11eb-085d-ebde562eb9db
# ╟─cfaf4300-25da-11eb-04d8-0bfb97249bb2
# ╠═08debbe0-25e7-11eb-1ec7-fb24a591077c
# ╠═eddc31c0-1b95-11eb-1282-892c325c95a6
# ╠═62313b10-1b96-11eb-08e9-d31d4ef0943f
# ╠═6db45030-1b96-11eb-2c41-ed2e1c5441a6
# ╠═7f796a80-1b96-11eb-1582-7b4321ab93e7
# ╠═51c743f0-1b96-11eb-36c9-a9ce56cd8859
# ╠═1a2a1e20-205c-11eb-1462-c700d278e137
# ╟─f295afd0-25d5-11eb-0e04-b386d7db338d
# ╠═0d4225c0-25d6-11eb-1b80-cb6b323a7181
# ╟─db8154c0-25d5-11eb-0ddd-3b57dae3e708
# ╠═d47521c0-25d5-11eb-09e7-1934afa8689d
# ╠═af9236c0-25dc-11eb-0ffa-d724f99a5364
# ╟─719b8920-25e1-11eb-2c6e-3f9ad3d236e4
# ╟─233dbcd0-25e1-11eb-26d3-f51fca7956d8
