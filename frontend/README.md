# UNCLONED Frontend

This folder contains the Next.js storefront and admin dashboard for UNCLONED.

For the full project documentation, setup guide, Supabase scripts, environment variables, admin access, and deployment notes, see:

```text
../README.md
```

## Quick Start

```bash
cd frontend
npm install
npm run dev
```

Open:

```text
http://localhost:3000
```

Admin:

```text
http://localhost:3000/admin
Username: admin
Password: uncloned2026
```

Change the admin password with `ADMIN_PASSWORD` in `.env.local`.

## Scripts

```bash
npm run dev
npm run build
npm run start
npm run lint
npm run test
```

## Environment

Create `.env.local` in this folder. Required keys are documented in `../README.md`.
