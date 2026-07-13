# sql-mastery-exercises
A comprehensive guide covering SQL from the basics to an advanced level, featuring hands-on projects and a summary of key techniques and common pitfalls.

### 💡 สรุปเนื้อหาและจุดตกม้าตายจากบทเรียนที่ 1 (SELECT Basics)

ในบทเรียนเริ่มต้นนี้ ฉันได้ทำการวิเคราะห์โครงสร้างคำสั่งพื้นฐานและจดบันทึกความแตกต่างเชิงลึกไว้ดังนี้:

* **ฟังก์ชันยืดหยุ่นตามค่ายระบบฐานข้อมูล:** ค้นพบว่าคำสั่งนับความยาวตัวอักษร (`String Length`) จะใช้ไม่เหมือนกัน ถ้าทำงานบน MySQL/PostgreSQL จะใช้ `LENGTH()` แต่ถ้าขยับไปใช้ Microsoft SQL Server จะต้องเปลี่ยนไปใช้ `LEN()` แทน
* **ความละเอียดรอบคอบเรื่อง Data Type:** การระบุเงื่อนไขตัวเลขกับข้อความมีความต่างกัน ข้อความต้องครอบด้วย Single Quotes (`'Germany'`) เสมอ ส่วนตัวเลขห้ามใส่คอมม่า และต้องนับจำนวนเลข 0 ให้ตรงกับ Business Logic ห้ามขาดห้ามเกินเด็ดขาด!


### 💡 สรุปเทคนิคสำคัญจากบทเรียนที่ 2 (SELECT from WORLD)

* **ความแตกต่างที่สำคัญระหว่าง OR และ XOR:** ในการกรองข้อมูลแบบมีเงื่อนไข `OR` จะยอมรับผลลัพธ์ที่เป็นจริงทั้งสองข้อ แต่สำหรับ `XOR` (Exclusive OR) จะยอมรับผลลัพธ์ที่ตรงตามเงื่อนไขข้อใดข้อหนึ่ง **"เพียงข้อเดียวเท่านั้น"** หากเข้าเกณฑ์ทั้งสองข้อพร้อมกัน ระบบจะถือว่าเป็นเท็จและคัดออกทันที ซึ่งเหมาะมากกับการทำ Data Cleansing ที่ต้องการคัดกรองข้อมูลประเภทที่มีความซับซ้อนซ้อนทับกัน
* **เทคนิคขั้นสูงของคำสั่ง ROUND (-3):** ค้นพบทริคในการปัดเศษจำนวนเต็มในฐานข้อมูล โดยการระบุค่าตำแหน่งเป็นตัวเลขติดลบ เช่น การระบุ `-3` จะเป็นการสั่งให้ระบบคำนวณและปัดเศษข้อมูลให้อยู่ในหลักพันที่ใกล้ที่สุดทันที แทนที่จะปัดเศษทศนิยมตามปกติ ช่วยประหยัดเวลาในการเขียน Logic คำนวณบนสคริปต์ปลายทางได้มาก


### 💡 สรุปเทคนิคสำคัญจากบทเรียนที่ 3 (SELECT from NOBEL)

* **ความสำคัญของการทำ Debugging และทำความเข้าใจ Metadata:** ค้นพบว่าข้อผิดพลาดที่พบบ่อยที่สุด (Syntax & Logic Error) เกิดจากการระบุชื่อคอลัมน์สลับกัน เช่น การนำข้อมูลชื่อบุคคล (`winner`) ไปใส่ในคอลัมน์สาขา (`subject`) การจดบันทึกคำสั่งที่เกิด Error ควบคู่กับวิธีการแก้ไขที่ถูกต้องลงในพอร์ต ช่วยแสดงให้เห็นทักษะการดีบักโค้ดที่มีโครงสร้างและเป็นระบบ
* **การควบคุมลำดับความสำคัญของตรรกะด้วยวงเล็บ ( )**: เมื่อมีการใช้ตัวดำเนินการ `AND` และ `OR` ร่วมกันใน Query ที่มีความซับซ้อน การไม่ใส่วงเล็บจะทำให้ระบบประมวลผลผิดพลาด การประยุกต์ใช้วงเล็บเพื่อแบ่งกลุ่มเงื่อนไขอย่างชัดเจนช่วยให้ผลลัพธ์ของข้อมูลมีความแม่นยำสูงสุด
* **การลดรูปโค้ดด้วย NOT IN:** เรียนรู้การสกัดกลุ่มข้อมูลที่ไม่ต้องการออกพร้อมกันหลายๆ ค่าด้วยคำสั่ง `NOT IN` แทนการใช้เครื่องหมายไม่เท่ากับ (`!=`) ซ้อนกันหลายครั้ง ทำให้คำสั่งมีความกระชับและเพิ่มความเร็วในการประมวลผลข้อมูล

---

## 💡 Key Technical Takeaways & Common Pitfalls (My Learning Insights)

During this module, I analyzed syntax behaviors and documented critical SQL execution rules to avoid logical errors in data analytics:

* **Logical Operator Precedence (The Power of Parentheses):** When combining `AND` and `OR` within complex queries, omitting parentheses `( )` can cause the database engine to misinterpret the execution order. I mastered grouping conditions explicitly to ensure absolute data precision.
* **Schema & Metadata Awareness (Debugging Mastery):** One of the most common pitfalls in filtering is swapping column values (e.g., placing a person's name under the `subject` column instead of `winner`). Keeping track of these syntax errors and their corrections demonstrates my structured approach to debugging production queries.
* **Code Optimization with `NOT IN`:** I practiced replacing multiple, repetitive `!=` (not equal to) conditions with a clean and compact `NOT IN` operator. This not only improves query readability but also enhances execution speed on the database server.
* **Precision in Data Types:** Ensuring proper syntax by wrapping string text in single quotes (`'Literature'`) while leaving numeric values untouched to prevent implicit type conversion errors.

---

### 🚀 Business Impact of this Module
The ability to manipulate multi-conditioned logical operators allows me to refine chaotic historical records into precise, business-ready datasets. This skill is foundational for building reliable data pipelines where strict filtering and high data integrity are mandatory.
