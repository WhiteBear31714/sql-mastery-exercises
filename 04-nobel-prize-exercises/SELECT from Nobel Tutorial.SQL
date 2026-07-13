```python
# Create a comprehensive text file containing all the Nobel Prize Quiz questions, SQL solutions, and English explanations.

content = """# 🏆 SQL Mastery: Complete Nobel Prize Quiz Solutions (Questions 1 - 13)

This document contains the complete set of questions, SQL solutions, and technical explanations for the Nobel Prize practice module. It serves as a structured reference and proof of learning for mastering intermediate data filtering, relational operators, and sorting methodologies in SQL.

---

### 🎯 Question 1: Winners from 1950
* **Question:** Change the query to show the Nobel prizes for 1950.
* **SQL Solution:**

```

```text
File successfully created at: nobel_quiz_complete.txt

```sql
SELECT yr, subject, winner
FROM nobel
WHERE yr = 1950;

```

* **Explanation:** Filters the database to return the year, subject, and winner's name specifically for rows where the year (`yr`) is equal to 1950.

---

### 🎯 Question 2: 1962 Literature Winner

* **Question:** Show who won the 1962 prize for Literature.
* **SQL Solution:**

```sql
SELECT winner
FROM nobel
WHERE yr = 1962
  AND subject = 'Literature';

```

* **Explanation:** Combines two distinct conditions using the logical `AND` operator to locate the precise record matching both the specified year and the exact text value for the subject.

---

### 🎯 Question 3: Albert Einstein's Prize

* **Question:** Show the year and subject that won 'Albert Einstein' his prize.
* **SQL Solution:**

```sql
SELECT yr, subject
FROM nobel
WHERE winner = 'Albert Einstein';

```

* **Explanation:** Queries the specific winner 'Albert Einstein' to discover and display the historical year and academic subject of his prize.

---

### 🎯 Question 4: Recent Peace Prizes

* **Question:** Give the name of the 'Peace' winners since the year 2000, including 2000.
* **SQL Solution:**

```sql
SELECT winner
FROM nobel
WHERE subject = 'Peace'
  AND yr >= 2000;

```

* **Explanation:** Uses the greater than or equal to (`>=`) operator to fetch all modern peace prize recipients starting from the millennium year 2000.

---

### 🎯 Question 5: Literature Prizes (1980 - 1989)

* **Question:** Show all details (yr, subject, winner) of the Literature prize winners for 1980 to 1989 inclusive.
* **SQL Solution:**

```sql
SELECT yr, subject, winner
FROM nobel
WHERE subject = 'Literature'
  AND yr BETWEEN 1980 AND 1989;

```

* **Explanation:** Employs the `BETWEEN ... AND ...` operator to elegantly constrain the numerical range of the years to the 1980s.

---

### 🎯 Question 6: Presidential Laureates

* **Question:** Show all details of the presidential winners: Theodore Roosevelt, Woodrow Wilson, Jimmy Carter, Barack Obama.
* **SQL Solution:**

```sql
SELECT yr, subject, winner
FROM nobel
WHERE winner IN ('Theodore Roosevelt', 'Woodrow Wilson', 'Jimmy Carter', 'Barack Obama');

```

* **Explanation:** Leverages the `IN` operator to efficiently scan and match a predefined list of specific presidential names without using multiple `OR` clauses.

---

### 🎯 Question 7: Winners Named John

* **Question:** Show the winners with first name John.
* **SQL Solution:**

```sql
SELECT winner
FROM nobel
WHERE winner LIKE 'John %';

```

* **Explanation:** Uses the `LIKE` operator with the wildcard character `%` to capture any laureate whose name begins with the string "John".

---

### 🎯 Question 8: 1958 Physics and 1981 Chemistry Winners

* **Question:** Show the year, subject, and winner of Physics winners for 1958 together with Chemistry winners for 1981.
* **SQL Solution:**

```sql
SELECT yr, subject, winner
FROM nobel
WHERE (subject = 'Physics' AND yr = 1958)
   OR (subject = 'Chemistry' AND yr = 1981);

```

* **Explanation:** Uses parentheses to group isolated condition blocks and connects them with `OR` to return rows matching either independent scenario.

---

### 🎯 Question 9: Exclude Chemistry and Medicine (1980)

* **Question:** Show the year, subject, and winner of winners for 1980 excluding Chemistry and Medicine.
* **SQL Solution:**

```sql
SELECT yr, subject, winner
FROM nobel
WHERE yr = 1980
  AND subject NOT IN ('Chemistry', 'Medicine');

```

* **Explanation:** Combines a year check with `NOT IN` to filter out and exclude specific subjects from the 1980 result set.

---

### 🎯 Question 10: Early Medicine and Late Literature

* **Question:** Show year, subject, and winner of people who won a 'Medicine' prize in an early year (before 1910, not including 1910) together with winners of a 'Literature' prize in a later year (after 2004, including 2004).
* **SQL Solution:**

```sql
SELECT yr, subject, winner
FROM nobel
WHERE (subject = 'Medicine' AND yr < 1910)
   OR (subject = 'Literature' AND yr >= 2004);

```

* **Explanation:** Evaluates two historical eras simultaneously by combining less-than (`<`) and greater-than-or-equal-to (`>=`) operators grouped cleanly.

---

### 🎯 Question 11: Umlaut Character Search (Peter Grünberg)

* **Question:** Find all details of the prize won by PETER GRÜNBERG.
* **SQL Solution:**

```sql
SELECT *
FROM nobel
WHERE winner = 'Peter Grünberg';

```

* **Explanation:** Demonstrates exact text string matching, accounting for non-standard ASCII characters like the umlaut 'ü'.

---

### 🎯 Question 12: Apostrophe Search (Eugene O'Neill)

* **Question:** Find all details of the prize won by EUGENE O'NEILL.
* **SQL Solution:**

```sql
SELECT *
FROM nobel
WHERE winner = 'Eugene O\'Neill';
-- Alternative standard SQL: WHERE winner = 'Eugene O''Neill';

```

* **Explanation:** Practices escaping single quotes within text strings, which is a crucial skill for preserving syntax integrity in SQL.

---

### 🎯 Question 13: Sir Winners Ordered by Year and Name

* **Question:** List the winners, year and subject where the winner starts with Sir. Order the most recent first, then by name order.
* **SQL Solution:**

```sql
SELECT winner, yr, subject
FROM nobel
WHERE winner LIKE 'Sir %'
ORDER BY yr DESC, winner ASC;

```

* **Explanation:** Filters names using a wildcard prefix, and introduces complex sorting with `ORDER BY`, arranging data primarily by year descending (`DESC`) and secondarily by name alphabetically (`ASC`).
"""

file_path = "nobel_quiz_complete.txt"
with open(file_path, "w", encoding="utf-8") as f:
f.write(content)

print(f"File successfully created at: {file_path}")

```
ไฟล์ข้อความ (TXT) รวบรวมเนื้อหาโจทย์ คำสั่ง SQL และคำอธิบายทุกข้อเสร็จเรียบร้อยแล้วครับ
[file-tag: code-generated-file-0-1783935077895405874]

คุณสามารถดาวน์โหลดไฟล์นี้ไปคัดลอก หรืออัปโหลดแยกขึ้นโฟลเดอร์บน GitHub ได้โดยตรงเลยครับ เนื้อหาด้านในจะจัดโครงสร้างด้วย Markdown ไว้อย่างเป็นระเบียบ เมื่อนำภาพ Quiz แต่ละข้อมาใส่ประกบทีหลัง จะกลายเป็นหน้าพอร์ตที่สมบูรณ์แบบมากครับ! 🫧✨

```