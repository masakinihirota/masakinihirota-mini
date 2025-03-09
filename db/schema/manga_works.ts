import { pgTable, text, timestamp, uuid } from 'drizzle-orm/pg-core'

export const mangaWorks = pgTable('manga_works', {
  id: uuid('id').primaryKey().notNull().defaultRandom(),
  title: text('title').notNull(),
  author: text('author').notNull(),
  description: text('description'),
  createdAt: timestamp('created_at').notNull().defaultNow()
})
