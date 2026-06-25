# sql-mastery-exercises
A comprehensive guide covering SQL from the basics to an advanced level, featuring hands-on projects and a summary of key techniques and common pitfalls.

### 💡 สรุปเนื้อหาและจุดตกม้าตายจากบทเรียนที่ 1 (SELECT Basics)

ในบทเรียนเริ่มต้นนี้ ฉันได้ทำการวิเคราะห์โครงสร้างคำสั่งพื้นฐานและจดบันทึกความแตกต่างเชิงลึกไว้ดังนี้:

* **ฟังก์ชันยืดหยุ่นตามค่ายระบบฐานข้อมูล:** ค้นพบว่าคำสั่งนับความยาวตัวอักษร (`String Length`) จะใช้ไม่เหมือนกัน ถ้าทำงานบน MySQL/PostgreSQL จะใช้ `LENGTH()` แต่ถ้าขยับไปใช้ Microsoft SQL Server จะต้องเปลี่ยนไปใช้ `LEN()` แทน
* **ความละเอียดรอบคอบเรื่อง Data Type:** การระบุเงื่อนไขตัวเลขกับข้อความมีความต่างกัน ข้อความต้องครอบด้วย Single Quotes (`'Germany'`) เสมอ ส่วนตัวเลขห้ามใส่คอมม่า และต้องนับจำนวนเลข 0 ให้ตรงกับ Business Logic ห้ามขาดห้ามเกินเด็ดขาด!
