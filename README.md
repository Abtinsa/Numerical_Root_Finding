🌟 Numerical Root Finding Using MATLAB

📌 **Overview**

This MATLAB project implements and compares **three classical numerical methods** to approximate the root of a nonlinear equation.  
The equation under investigation is:
**f(x) = x³ + 4x² - 10**
The goal is to find its root with **accuracy up to four decimal places** using different algorithms.

---

🛠️ **Methodology**

🔢 **1. Equation & Objective**

- Equation: `f(x) = x^3 + 4x^2 - 10`
- Root interval: `[1, 2]`
- Target tolerance: `1e-4`

---

🎯 **2. Implemented Methods**

1️⃣ **Bisection Method**  
🔸 Iteratively halves the interval where the sign of the function changes.  
🔹 Pros: Guaranteed convergence, easy to implement.

2️⃣ **Newton-Raphson Method**  
🔸 Uses derivatives to rapidly converge to a root.  
🔹 Pros: Fast convergence.  
🔹 Cons: Requires good initial guess and derivative function.

3️⃣ **Fixed Point Iteration**  
🔸 Transforms the equation to `x = g(x)` and iterates.  
🔹 Pros: Simple.  
🔹 Cons: May diverge if `|g'(x)| > 1`.

---

🧮 **MATLAB Implementation**

✅ Each method is encapsulated in a standalone `.m` function.  
✅ A `main.m` file allows user interaction:  
→ Choose method  
→ See root & number of iterations  
→ Visualize convergence trend.

---

📈 **Convergence Visualization**

Each method includes a convergence plot where:

- X-axis = Iteration count  
- Y-axis = Root estimate per iteration

📊 Example (Bisection):
    -Approximate root = 1.3652
    -Number of iterations = 13
    -ScreenShot of bisection: <img width="1512" alt="SC1" src="https://github.com/user-attachments/assets/0823c863-2851-4415-92b9-5b1ed8c88fb7" />

---

🎡 **Results & Comparison**

| 🔧 Method          | 🔍 Approx. Root | 🔁 Iterations | ⚡️ Speed        |
|--------------------|----------------|----------------|------------------|
| Bisection          | 1.3652         | 13             | Slow but robust  |
| Newton-Raphson     | 1.3652         | 5              | Very fast        |
| Fixed Point        | 1.3652         | 17             | Conditional      |

💡 **Insight**:  
- Bisection is safest but slow.  
- Newton-Raphson is fastest if derivative is known.  
- Fixed Point works only for carefully chosen `g(x)`.

---

📸 **Screenshots of progeam**
<img width="1512" alt="SC3" src="https://github.com/user-attachments/assets/8ee8872f-8989-4b76-ba3e-d858a945d704" />
<img width="1512" alt="SC2" src="https://github.com/user-attachments/assets/1ddd747d-d11e-43ca-ad27-171a42e26613" />

---

✨ **Author**

👨‍💻 Abtin Aghasadeghi  
📍 Civil Engineer | Numerical Calculations Enthusiast  
📧 [Contact Me](mailto:Sadeghi@work.com)

---

🚀 Run `main.m` to start the interactive root-finding experience using MATLAB!
