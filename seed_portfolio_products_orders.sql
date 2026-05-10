-- UNCLONED portfolio-ready seed data
-- Run in Supabase SQL Editor after restoring the project.
-- It refreshes products, variants, and sample orders with unique real product images.

BEGIN;

DELETE FROM order_items;
DELETE FROM orders;
DELETE FROM product_variants;
DELETE FROM products;

INSERT INTO products (
  id, name, name_en, description, description_en, category, base_price, image_url,
  material_th, material_en, care_th, care_en, shipping_th, shipping_en,
  model_info_th, model_info_en, is_active
) VALUES
('10000000-0000-0000-0000-000000000001', 'เสื้อเชิ้ตลินินทรงโอเวอร์ไซซ์ สีธรรมชาติ', 'Natural Oversized Linen Shirt', 'เสื้อเชิ้ตลินินสำหรับลุคมินิมอล ใส่ได้ทุกวัน ตัดเย็บในจำนวนจำกัดโดย UNCLONED', 'Natural oversized linen shirt for minimal everyday styling, crafted in small batches by UNCLONED.', 'tops', 1290, 'https://images.unsplash.com/photo-1515886657613-9f3515b0c78f?q=80&w=1200&auto=format&fit=crop', 'ผ้าลินินผสมฝ้าย ระบายอากาศดี', 'Linen cotton blend, breathable natural texture', 'ซักมือหรือซักโหมดถนอมผ้า ตากในที่ร่ม หลีกเลี่ยงความร้อนสูง', 'Hand wash or gentle cycle, dry in shade, avoid high heat.', 'พร้อมจัดส่งภายใน 1-2 วันทำการ', 'Ready to ship within 1-2 business days.', 'นางแบบสูง 165-170 ซม.', 'Model height 165-170 cm.', true),
('10000000-0000-0000-0000-000000000002', 'เสื้อคลุมผ้าฝ้ายทอมือ Indigo', 'Indigo Handwoven Cotton Jacket', 'เสื้อคลุมฝ้ายทอมือย้อมคราม เหมาะกับลุค casual และ slow fashion', 'Indigo handwoven cotton jacket for casual slow-fashion styling.', 'tops', 1890, 'https://images.unsplash.com/photo-1576566588028-4147f3842f27?q=80&w=1200&auto=format&fit=crop', 'ฝ้ายทอมือย้อมคราม', 'Handwoven cotton with indigo-inspired finish', 'ซักแยกครั้งแรกและตากในที่ร่ม', 'Wash separately at first and dry in shade.', 'พร้อมจัดส่งภายใน 1-2 วันทำการ', 'Ready to ship within 1-2 business days.', 'นางแบบสูง 168 ซม.', 'Model height 168 cm.', true),
('10000000-0000-0000-0000-000000000003', 'เสื้อแขนกุดผ้าลินิน Minimal', 'Minimal Linen Sleeveless Top', 'เสื้อแขนกุดลินินเนื้อนุ่มสำหรับวันอากาศร้อน', 'Minimal sleeveless linen top for warm-weather everyday wear.', 'tops', 990, 'https://images.unsplash.com/photo-1554568218-0f1715e72254?q=80&w=1200&auto=format&fit=crop', 'ลินินเนื้อนุ่ม น้ำหนักเบา', 'Soft lightweight linen', 'ซักถนอมผ้า รีดไฟอ่อน', 'Gentle wash, low heat ironing.', 'พร้อมจัดส่งภายใน 1-2 วันทำการ', 'Ready to ship within 1-2 business days.', 'นางแบบสูง 165 ซม.', 'Model height 165 cm.', true),
('10000000-0000-0000-0000-000000000004', 'กางเกงเอวสูงทรงตรง Earth Tone', 'Earth Tone High-Waisted Trousers', 'กางเกงเอวสูงทรงตรง สวมง่ายสำหรับทำงานและวันหยุด', 'Earth tone high-waisted trousers for workdays and casual weekends.', 'bottoms', 1590, 'https://images.unsplash.com/photo-1594633312681-425c7b97ccd1?q=80&w=1200&auto=format&fit=crop', 'ผ้าฝ้ายผสมสแปนเด็กซ์ ทรงสวย', 'Cotton spandex blend with structured drape', 'กลับด้านก่อนซักเพื่อถนอมสี', 'Turn inside out before washing.', 'พร้อมจัดส่งภายใน 1-2 วันทำการ', 'Ready to ship within 1-2 business days.', 'นางแบบสูง 170 ซม.', 'Model height 170 cm.', true),
('10000000-0000-0000-0000-000000000005', 'กระโปรงลินินทรง A-Line', 'A-Line Linen Skirt', 'กระโปรงลินินทรง A-Line ซับในนุ่มและระบายอากาศดี', 'A-line linen skirt with soft lining and breathable construction.', 'bottoms', 1490, 'https://images.unsplash.com/photo-1583496661160-c588e25281bb?q=80&w=1200&auto=format&fit=crop', 'ลินินผสมฝ้าย ซับในนุ่ม', 'Cotton linen blend with soft lining', 'ซักถนอมผ้า ตากในที่ร่ม', 'Gentle wash, dry in shade.', 'พร้อมจัดส่งภายใน 1-2 วันทำการ', 'Ready to ship within 1-2 business days.', 'นางแบบสูง 166 ซม.', 'Model height 166 cm.', true),
('10000000-0000-0000-0000-000000000006', 'กางเกงขากว้างผ้าฝ้าย Natural White', 'Natural White Wide-Leg Pants', 'กางเกงขากว้างผ้าฝ้ายสำหรับลุคเรียบง่ายและสบาย', 'Natural white wide-leg cotton pants for simple comfortable styling.', 'bottoms', 1690, 'https://images.unsplash.com/photo-1506629905607-d405d7d3b0d2?q=80&w=1200&auto=format&fit=crop', 'ผ้าฝ้ายหนานุ่ม ใส่สบาย', 'Soft structured cotton for everyday wear', 'แยกซักกับผ้าสีเข้ม', 'Wash separately from dark colors.', 'พร้อมจัดส่งภายใน 1-2 วันทำการ', 'Ready to ship within 1-2 business days.', 'นางแบบสูง 170 ซม.', 'Model height 170 cm.', true),
('10000000-0000-0000-0000-000000000007', 'เดรสลินินยาวทรง Relaxed', 'Relaxed Long Linen Dress', 'เดรสลินินยาวทรงสบายสำหรับวันพักผ่อน', 'Relaxed long linen dress for soft vacation styling.', 'dresses', 2390, 'https://images.unsplash.com/photo-1595777457583-95e059d581b8?q=80&w=1200&auto=format&fit=crop', 'ลินินพรีเมียม เนื้อเย็น', 'Premium cool-touch linen', 'ซักมือเพื่อถนอมทรง', 'Hand wash to preserve shape.', 'พร้อมจัดส่งภายใน 1-2 วันทำการ', 'Ready to ship within 1-2 business days.', 'นางแบบสูง 168 ซม.', 'Model height 168 cm.', true),
('10000000-0000-0000-0000-000000000008', 'เดรสผ้าฝ้ายคอเหลี่ยม', 'Square-Neck Cotton Dress', 'เดรสคอเหลี่ยมผ้าฝ้ายธรรมชาติ ตัดเย็บเข้ารูป', 'Square-neck natural cotton dress with flattering cut.', 'dresses', 2190, 'https://images.unsplash.com/photo-1550639525-c97d455acf70?q=80&w=1200&auto=format&fit=crop', 'ฝ้ายธรรมชาติ ตัดเย็บเข้ารูป', 'Natural cotton with flattering cut', 'รีดไฟอ่อนจากด้านใน', 'Low heat iron from inside.', 'พร้อมจัดส่งภายใน 1-2 วันทำการ', 'Ready to ship within 1-2 business days.', 'นางแบบสูง 165 ซม.', 'Model height 165 cm.', true),
('10000000-0000-0000-0000-000000000009', 'เดรสสายเดี่ยวผ้าซาติน Soft Beige', 'Soft Beige Satin Slip Dress', 'เดรสสายเดี่ยวซาตินสีเบจ ผิวสัมผัสลื่นเย็น', 'Soft beige satin slip dress with cool smooth touch.', 'dresses', 2590, 'https://images.unsplash.com/photo-1585487000160-6ebcfceb0d03?q=80&w=1200&auto=format&fit=crop', 'ซาตินผสมซิลค์ ผิวสัมผัสลื่นเย็น', 'Satin silk blend with cool smooth touch', 'ซักมือ หลีกเลี่ยงการขยี้แรง', 'Hand wash, avoid harsh rubbing.', 'พร้อมจัดส่งภายใน 1-2 วันทำการ', 'Ready to ship within 1-2 business days.', 'นางแบบสูง 170 ซม.', 'Model height 170 cm.', true),
('10000000-0000-0000-0000-000000000010', 'กระเป๋าสาน Handmade Tote', 'Handmade Woven Tote Bag', 'กระเป๋าสาน handmade สำหรับ everyday carry', 'Handmade woven tote bag for everyday carry.', 'accessories', 890, 'https://images.unsplash.com/photo-1590874103328-eac38a683ce7?q=80&w=1200&auto=format&fit=crop', 'วัสดุสานทนทาน น้ำหนักเบา', 'Durable lightweight woven material', 'เช็ดด้วยผ้าแห้ง เก็บในที่แห้ง', 'Wipe dry and store in dry place.', 'พร้อมจัดส่งภายใน 1-2 วันทำการ', 'Ready to ship within 1-2 business days.', 'ขนาดใช้งานประจำวัน', 'Daily carry size.', true),
('10000000-0000-0000-0000-000000000011', 'ผ้าพันคอ Cotton Gauze', 'Cotton Gauze Scarf', 'ผ้าพันคอคอตตอนกอซ โปร่ง นุ่ม ใช้งานได้หลายลุค', 'Cotton gauze scarf, soft and breathable for flexible styling.', 'accessories', 690, 'https://images.unsplash.com/photo-1601924638867-3ec6a4b7a4f0?q=80&w=1200&auto=format&fit=crop', 'คอตตอนกอซ นุ่ม โปร่ง', 'Soft breathable cotton gauze', 'ซักมือและบิดเบา ๆ', 'Hand wash and gently squeeze.', 'พร้อมจัดส่งภายใน 1-2 วันทำการ', 'Ready to ship within 1-2 business days.', 'Free size', 'Free size.', true),
('10000000-0000-0000-0000-000000000012', 'หมวกผ้าลินิน Bucket Hat', 'Linen Bucket Hat', 'หมวกบักเก็ตผ้าลินิน เหมาะกับลุคสบาย ๆ', 'Linen bucket hat for relaxed everyday looks.', 'accessories', 790, 'https://images.unsplash.com/photo-1521369909029-2afed882baee?q=80&w=1200&auto=format&fit=crop', 'ลินินผสมฝ้าย ทรงพอดี', 'Cotton linen blend, structured comfort', 'เช็ดทำความสะอาดเฉพาะจุด', 'Spot clean when possible.', 'พร้อมจัดส่งภายใน 1-2 วันทำการ', 'Ready to ship within 1-2 business days.', 'รอบศีรษะปรับได้', 'Adjustable head fit.', true);

INSERT INTO product_variants (id, product_id, size, stock_quantity, additional_price) VALUES
('20000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000001', 'S', 7, 0),
('20000000-0000-0000-0000-000000000002', '10000000-0000-0000-0000-000000000001', 'M', 11, 0),
('20000000-0000-0000-0000-000000000003', '10000000-0000-0000-0000-000000000002', 'M', 6, 0),
('20000000-0000-0000-0000-000000000004', '10000000-0000-0000-0000-000000000002', 'L', 4, 100),
('20000000-0000-0000-0000-000000000005', '10000000-0000-0000-0000-000000000003', 'S', 9, 0),
('20000000-0000-0000-0000-000000000006', '10000000-0000-0000-0000-000000000003', 'M', 12, 0),
('20000000-0000-0000-0000-000000000007', '10000000-0000-0000-0000-000000000004', 'Waist 26"', 8, 0),
('20000000-0000-0000-0000-000000000008', '10000000-0000-0000-0000-000000000004', 'Waist 28"', 5, 0),
('20000000-0000-0000-0000-000000000009', '10000000-0000-0000-0000-000000000005', 'Free Size', 10, 0),
('20000000-0000-0000-0000-000000000010', '10000000-0000-0000-0000-000000000006', 'Waist 30"', 3, 100),
('20000000-0000-0000-0000-000000000011', '10000000-0000-0000-0000-000000000007', 'M', 6, 0),
('20000000-0000-0000-0000-000000000012', '10000000-0000-0000-0000-000000000008', 'S', 5, 0),
('20000000-0000-0000-0000-000000000013', '10000000-0000-0000-0000-000000000009', 'M', 4, 0),
('20000000-0000-0000-0000-000000000014', '10000000-0000-0000-0000-000000000010', 'One Size', 14, 0),
('20000000-0000-0000-0000-000000000015', '10000000-0000-0000-0000-000000000011', 'One Size', 18, 0),
('20000000-0000-0000-0000-000000000016', '10000000-0000-0000-0000-000000000012', 'One Size', 9, 0);

INSERT INTO orders (id, customer_name, customer_phone, customer_address, total_amount, status, created_at) VALUES
('30000000-0000-0000-0000-000000000001', 'Nicha Handmade', '0812345601', 'Bangkok, Thailand', 3480, 'completed', now() - interval '1 day'),
('30000000-0000-0000-0000-000000000002', 'Mali Studio', '0812345602', 'Chiang Mai, Thailand', 2190, 'shipped', now() - interval '2 days'),
('30000000-0000-0000-0000-000000000003', 'Kanya Cotton', '0812345603', 'Khon Kaen, Thailand', 1680, 'pending_payment', now() - interval '3 days'),
('30000000-0000-0000-0000-000000000004', 'Nicha Handmade', '0812345601', 'Bangkok, Thailand', 2590, 'completed', now() - interval '4 days'),
('30000000-0000-0000-0000-000000000005', 'Suda Linen', '0812345604', 'Surat Thani, Thailand', 1490, 'verifying_payment', now() - interval '5 days'),
('30000000-0000-0000-0000-000000000006', 'Arisa Minimal', '0812345605', 'Phuket, Thailand', 3980, 'completed', now() - interval '6 days');

INSERT INTO order_items (order_id, variant_id, quantity, price_at_time) VALUES
('30000000-0000-0000-0000-000000000001', '20000000-0000-0000-0000-000000000001', 1, 1290),
('30000000-0000-0000-0000-000000000001', '20000000-0000-0000-0000-000000000003', 1, 1890),
('30000000-0000-0000-0000-000000000002', '20000000-0000-0000-0000-000000000012', 1, 2190),
('30000000-0000-0000-0000-000000000003', '20000000-0000-0000-0000-000000000005', 1, 990),
('30000000-0000-0000-0000-000000000003', '20000000-0000-0000-0000-000000000015', 1, 690),
('30000000-0000-0000-0000-000000000004', '20000000-0000-0000-0000-000000000013', 1, 2590),
('30000000-0000-0000-0000-000000000005', '20000000-0000-0000-0000-000000000009', 1, 1490),
('30000000-0000-0000-0000-000000000006', '20000000-0000-0000-0000-000000000007', 2, 1590),
('30000000-0000-0000-0000-000000000006', '20000000-0000-0000-0000-000000000014', 1, 890);

COMMIT;
