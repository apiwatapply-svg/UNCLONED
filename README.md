# UNCLONED E-Commerce Storefront

UNCLONED is a handmade apparel storefront built with Next.js, Supabase, product variants, cart checkout, PromptPay QR payment flow, and a protected admin back office.

GitHub: https://github.com/apiwatapply-svg/UNCLONED

## Visual Workflow

The portfolio explains this project mostly through real screenshots:

1. Brand storefront with bilingual navigation and collection entry points.
2. Supabase-backed collection grid with unique product images.
3. Product detail page with variants, stock, quantity control, and cart flow.
4. Admin inventory screen for product and variant management.
5. Admin order screen for fulfillment, payment state, and tracking updates.
6. Analytics dashboard for revenue, conversion, customers, and top products.

## Core Features

- Bilingual storefront UI for Thai and English customers.
- Product collection and product detail pages backed by Supabase.
- Product variants, stock quantities, low-stock indicators, and cart state.
- Checkout flow with customer shipping information and PromptPay QR payment UI.
- Protected admin dashboard under `/admin`.
- Product, inventory, order, fulfillment, tracking, and analytics workflows.
- Supabase SQL scripts for schema, RLS, and portfolio demo seed data.

## Tech Stack

- Next.js 16 App Router
- React 19
- TypeScript
- Tailwind CSS
- Supabase PostgreSQL
- Supabase RLS
- Zustand cart store
- PromptPay QR payment UI
- Playwright
- Vercel or PM2-capable Node hosting

## Demo Access

```text
Admin Basic Auth
Username: admin
Password: uncloned2026
```

## Project Structure

```text
UNCLONED/
|-- frontend/                         # Next.js storefront and admin app
|   |-- src/app/                       # App Router pages and API routes
|   |-- src/components/                # Storefront, cart, checkout, and admin UI
|   |-- src/lib/                       # Supabase helpers
|   `-- package.json
|-- schema.sql                         # Base Supabase schema
|-- setup_db_multilingual.sql          # Multilingual product fields
|-- setup_rls_security.sql             # RLS policies
|-- seed_portfolio_products_orders.sql # Portfolio-ready demo products/orders
`-- fix_portfolio_product_images_and_admin_orders.sql
```

## Getting Started

```bash
cd frontend
npm install
npm run dev
```

Create `frontend/.env.local`:

```env
NEXT_PUBLIC_SUPABASE_URL=your_supabase_project_url
NEXT_PUBLIC_SUPABASE_ANON_KEY=your_supabase_anon_key
SUPABASE_SERVICE_ROLE_KEY=your_service_role_key_for_admin_routes
```

## Verification

```bash
cd frontend
npm run build
npx playwright test
```
