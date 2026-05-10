-- Fix broken UNCLONED product images and allow admin demo pages to read seeded orders.
-- Run this in Supabase SQL Editor.

BEGIN;

UPDATE products
SET image_url = 'https://images.unsplash.com/photo-1577900232427-18219b9166a0?q=80&w=1200&auto=format&fit=crop'
WHERE id = '10000000-0000-0000-0000-000000000005';

UPDATE products
SET image_url = 'https://images.unsplash.com/photo-1591369822096-ffd140ec948f?q=80&w=1200&auto=format&fit=crop'
WHERE id = '10000000-0000-0000-0000-000000000006';

UPDATE products
SET image_url = 'https://images.unsplash.com/photo-1525507119028-ed4c629a60a3?q=80&w=1200&auto=format&fit=crop'
WHERE id = '10000000-0000-0000-0000-000000000011';

-- Portfolio demo read policies for admin screenshots when SERVICE_ROLE_KEY is not present locally.
-- For production, prefer SUPABASE_SERVICE_ROLE_KEY in server env instead of public order read.
DROP POLICY IF EXISTS "Portfolio demo read orders" ON orders;
DROP POLICY IF EXISTS "Portfolio demo read order_items" ON order_items;

CREATE POLICY "Portfolio demo read orders"
ON orders FOR SELECT USING (true);

CREATE POLICY "Portfolio demo read order_items"
ON order_items FOR SELECT USING (true);

COMMIT;
