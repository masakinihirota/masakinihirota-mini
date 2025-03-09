import { Button } from '@/components/ui/button'
import { ArrowRight, CreditCard, Database } from 'lucide-react'
import Link from 'next/link'
import { Terminal } from './terminal'

export default function HomePage() {
  return (
    <main>
      ランディングページ
      <br />
      <Link href='/manga/register'>マンガ登録</Link>
    </main>
  )
}
