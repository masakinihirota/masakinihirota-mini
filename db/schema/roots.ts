import {
  foreignKey,
  jsonb,
  pgTable,
  text,
  timestamp,
  uuid
} from 'drizzle-orm/pg-core'
import { authUsers } from 'drizzle-orm/supabase'

export const roots = pgTable(
  'roots',
  {
    id: uuid('id').primaryKey().notNull(),
    aud: text('aud'),
    email: text('email').notNull(),
    emailConfirmedAt: timestamp('email_confirmed_at'),
    lastSignInAt: timestamp('last_sign_in_at'),
    rawAppMetaData: jsonb('raw_app_meta_data'),
    rawUserMetaData: jsonb('raw_user_meta_data'),
    name: text('name'),
    fullName: text('full_name'),
    userName: text('user_name'),
    createdAt: timestamp('created_at').notNull().defaultNow(),
    updatedAt: timestamp('updated_at'),
    deletedAt: timestamp('deleted_at')
  },
  (table) => [
    foreignKey({
      columns: [table.id],
      foreignColumns: [authUsers.id]
    }).onDelete('cascade')
  ]
)
