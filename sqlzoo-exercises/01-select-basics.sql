-- ========================================================
-- 🐈 SQL Mastery: 01-SELECT Basics (SQLZoo)
-- สรุปเนื้อหาพื้นฐานและการใช้งานคำสั่ง SELECT, IN, BETWEEN
-- ========================================================

-- 1. Introducing the world table of countries
SELECT name, population FROM world WHERE name = 'Germany';

-- 2. Scandinavia
SELECT name, population FROM world WHERE name IN ('Sweden', 'Norway', 'Denmark');

-- 3. Just the right size
SELECT name, area FROM world WHERE area BETWEEN 200000 AND 250000;

-- --------------------------------------------------------
-- 🌟 Extra Insights & Bonus Exercises จากสมุดจดสรุป
-- --------------------------------------------------------

-- [Extra 1] การใช้ LIKE ค้นหาคำที่ขึ้นต้นด้วย 'Al'
SELECT name, area FROM world WHERE name LIKE 'Al%';

-- [Extra 2] การวัดความยาวของข้อความ (Length of Strings)
SELECT name, LENGTH(name) FROM world WHERE LENGTH(name) = 5 AND region = 'Europe';

-- [Extra 3] การคำนวณความหนาแน่นของประชากร (Population Density)
SELECT name, area/population AS density FROM world WHERE name IN ('China', 'Australia', 'Nigeria', 'France');

-- [Extra 4] เจาะลึกฟังก์ชันวัดความยาวข้อความ (String Length Functions)
-- เทคนิคสำคัญ: ในฐานะ Data Engineer ต้องรู้ว่าฟังก์ชันจัดการข้อมูลจะเปลี่ยนไปตาม Database Engine
--   - หากใช้ MySQL, PostgreSQL, Oracle       -> จะใช้คำสั่ง `LENGTH(column_name)`
--   - หากใช้ Microsoft SQL Server (T-SQL)   -> จะใช้คำสั่ง `LEN(column_name)`
SELECT name, LENGTH(name) AS name_length FROM world WHERE LENGTH(name) = 5 AND region = 'Europe';

-- [Extra 5] ทริคการกรองข้อมูลแบบมีเงื่อนไขร่วม (AND, OR, NOT Logic)
--   - AND : เงื่อนไขรอบข้าง "ต้องเป็นจริงทั้งหมด"
--   - OR  : เงื่อนไข "อย่างใดอย่างหนึ่งเป็นจริง" ก็พอ
--   - NOT : ใช้สำหรับ "ไม่เอาเงื่อนไขนี้" หรือกลับค่าจากจริงเป็นเท็จ

-- [Extra 6] ควิซประยุกต์ระบุตัวตนประเทศ (Andorra Analysis)
-- โจทย์: ค้นหาข้อมูลพื้นที่ (area) จากตาราง world โดยมีเงื่อนไข population = 64000
-- คำตอบที่ถูกต้องตามเลกเชอร์: C. Andorra 936
SELECT name, area FROM world WHERE population = 64000;
