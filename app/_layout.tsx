// オリジナルコード
import './globals.css'
import { getUser } from '@/db/queries'
import { UserProvider } from '@/lib/auth'
import type { Metadata, Viewport } from 'next'
import { Manrope } from 'next/font/google'

export const metadata: Metadata = {
  title: 'Next.js SaaS Starter',
  description: 'Get started quickly with Next.js, Postgres, and Stripe.'
}

export const viewport: Viewport = {
  maximumScale: 1
}

const manrope = Manrope({ subsets: ['latin'] })

export default function RootLayout({
  children
}: {
  children: React.ReactNode
}) {
  const userPromise = getUser()

  return (
    <html
      lang='en'
      className={`bg-white dark:bg-gray-950 text-black dark:text-white ${manrope.className}`}
    >
      <body className='min-h-[100dvh] bg-gray-50'>
        <UserProvider userPromise={userPromise}>{children}</UserProvider>
      </body>
    </html>
  )
}
