# Module 4 exercise 1

## 🎯 Objective

To review and deepen your understanding of R functions, functional programming principles, error handling, and algorithmic thinking. The exercises increase in complexity and prepare you to write production-ready, maintainable code.

---

### 🟢 Exercise 1 — Function with `NULL` Default Argument

**Task:**
Write a function `describe_vector()` that:

- Takes two arguments: `x` (numeric vector) and `summary_fun = NULL`.
- If `summary_fun = NULL`, returns a list with mean, median, and standard deviation.
- If `summary_fun` is "mean", "median", or "sd", return only that summary.
- If `summary_fun` has any other value, stop with an informative error message.

---

### 🟢 Exercise 2 — Use of `...` (Dot-dot-dot Arguments)

**Task:**
Write a function `flexible_plot()` that:

- Takes two numeric vectors `x` and `y`, and `...` (optional arguments).
- Uses `plot()` to plot `x` vs `y`.
- Passes `...` arguments to `plot()`.

Example:

```r
flexible_plot(1:10, 10:1, col = "blue", main = "Custom Plot")

```

---

### 🟢 Exercise 3 — Argument Value Restriction

**Task:**
Write a function `convert_temperature()` that:

- Takes `temp` (numeric) and `unit` ("C", "F", or "K").
- Converts `temp` to Celsius.
- If `unit` is invalid, stops with an informative error.
- Add a `round = TRUE/FALSE` argument to control rounding.

---

### 🟢 Exercise 4 — Defensive Refactoring

**Task:**
Refactor this ugly function to make it clear, functional, and robust:

```r
complex_sum <- function(x){
  result <- 0
  for(i in 1:length(x)){
    if(!is.na(x[i])){
      if(x[i] >= 0){
        result <- result + x[i]
      }
    }
  }
  return(result)
}

```

Include input checks and NA handling.

---

### 🟢 Exercise 5 — Safe Error Handling with tryCatch()

**Task:**
Write a function `safe_divide()` that:

- Takes two numeric arguments `a` and `b`.
- Returns `a / b`.
- If `b` is zero, returns "Cannot divide by zero" without crashing.
- If `a` or `b` are non-numeric, returns "Invalid input".

---

### 🟢 Exercise 6 — Dynamic Data Cleaning Function

**Task:**
Write a function `clean_and_merge_vars()` that:

- Detects pairs of columns following pattern `varX_major`, `varX_minor`.
- Creates a new column `varX` = sum of major + minor.
- Accepts any number of variable pairs.
- Has a parameter `drop_original = TRUE/FALSE`.
- Handles missing columns with warnings and unexpected patterns with errors.

**Dataset provided:** `cleaning_exercise_full.csv`

---

### 🟢 Exercise 7 — Functional Style & First-Class Functions

**Task:**
Write a function `apply_and_sum()` that:

- Takes a numeric vector and a function.
- Applies the function to each element.
- Returns the sum of the results.

Example:

```r
apply_and_sum(1:5, function(x) x^2) # returns 55

```

---

### 🟢 Exercise 8 — Implement a Backtesting Algorithm

**Task:**

Write a function `backtest_ma_strategy()` that:

1. **Aggregates daily NASDAQ Composite OHLC data into monthly close prices.**
2. **Calculates the 7-month moving average (MA(7)).**
3. **Generates buy/sell signals:**
    - **Buy** when the monthly close price is **above** MA(7).
    - **Sell** when the monthly close price is **below** MA(7).
4. **Add a parameter `execution_delay = 0`:**
    - Defines the number of **days** between the signal and trade execution.
    - Example:
        
        ➤ If `execution_delay = 5`, the trade will be executed 5 days after the signal is generated.
        
5. **Computes cumulative returns** based on trade execution dates.
6. **Plots the Equity Curve** (portfolio value evolution over time).
7. **Add a `verbose = TRUE/FALSE` option:**
    
    If `TRUE`, print key stats:
    
    - Number of trades.
    - Final return in percentage.
    
    Use the dataset: nasdaq_100.csv
    

---

### 🟢 Exercise 9 — Function Factory

**Task:**
Write a function factory `make_aggregator()` that:

- Takes a function name (`sum`, `mean`, `max`).
- Returns a function applying this aggregation.
- Stops with an error if name is invalid.

Example:

```r
agg_sum <- make_aggregator("sum")
agg_sum(c(1, 2, 3)) # returns 6

```

---

### 🟢 Exercise 10 — Build a Book Recommendation Function

**Task:**
Using the dataset `book_recommendations.csv` (100 books linked to skills), write a function `recommend_books()` that:

- Takes a `skill` keyword.
- Returns up to 3 matching book titles and authors.
- If no match, returns an informative message.
- Add a parameter `random = TRUE/FALSE` to return random books if no match.

**Dataset provided:** `book_recommendations.csv`