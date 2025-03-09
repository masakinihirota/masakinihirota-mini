import './globals.css'
import { getUser } from '@/db/queries'
import { UserProvider } from '@/lib/auth'
import type { Metadata, Viewport } from 'next'
import { Manrope } from 'next/font/google'

import { ModeToggle } from '@/components/mode-toggle'
import { ThemeProvider } from '@/components/theme-provider'

export const metadata: Metadata = {
  title: 'masakinihirota',
  description: `ネットという情報の洪水の中から真っ先に価値のある情報を拾い上げるWebサービス。
  適切な距離感のある友人を作る。
  ネット上の悪意をなくす。`
}

export const viewport: Viewport = {
  maximumScale: 1
}

const manrope = Manrope({ subsets: ['latin'] })

interface RootLayoutProps {
  children: React.ReactNode
}

export default function RootLayout({ children }: RootLayoutProps) {
  const userPromise = getUser()
  return (
    <html lang='ja' className={`${manrope.className}`}>
      <head />
      <body className=''>
        <UserProvider userPromise={userPromise}>
          <ThemeProvider
            attribute='class'
            defaultTheme='system'
            enableSystem
            disableTransitionOnChange
          >
            {children}
          </ThemeProvider>
        </UserProvider>
      </body>
    </html>
  )
}
