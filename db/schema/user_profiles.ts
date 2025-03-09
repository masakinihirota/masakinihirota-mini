import { foreignKey, pgTable, text, uuid } from 'drizzle-orm/pg-core'
import { roots } from './roots'

export const userProfiles = pgTable(
  'user_profiles',
  {
    id: uuid('id').primaryKey().notNull(),
    rootId: uuid('root_id').notNull(),
    profileData: text('profile_data')
  },
  (table) => [
    foreignKey({
      columns: [table.rootId],
      foreignColumns: [roots.id]
    }).onDelete('cascade')
  ]
)
