import { db } from '@/db/drizzle'
import { mangaWorks } from '@/db/schema/manga_works'
import { NextResponse } from 'next/server'

export async function POST(req: Request) {
  try {
    const body = await req.json()
    const { title, author, description } = body
    if (!title || !author) {
      return NextResponse.json(
        { error: 'Missing required fields' },
        { status: 400 }
      )
    }
    const newManga = await db
      .insert(mangaWorks)
      .values({
        id: crypto.randomUUID(),
        title,
        author,
        description: description || ''
      })
      .returning()
    return NextResponse.json(newManga)
  } catch (err) {
    console.error(err)
    return NextResponse.json(
      { error: 'Internal Server Error' },
      { status: 500 }
    )
  }
}
