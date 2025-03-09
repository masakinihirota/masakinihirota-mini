-- テーブル auth.users にダミーデータを挿入
insert into auth.users(
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, invited_at, confirmation_token,
  confirmation_sent_at, recovery_token, recovery_sent_at, email_change_token_new, email_change,
  email_change_sent_at, last_sign_in_at, raw_app_meta_data, raw_user_meta_data, is_super_admin,
  created_at, updated_at, phone, phone_confirmed_at, phone_change, phone_change_token,
  phone_change_sent_at, email_change_token_current, email_change_confirm_status,
  banned_until, reauthentication_token, reauthentication_sent_at, is_sso_user, deleted_at, is_anonymous
)
values
  (
    '00000000-0000-0000-0000-000000000001', '00000000-0000-0000-0000-000000000001', 'public', 'user', 'john.doe@example.com', 'encrypted_password_1',
    '2023-01-01T00:00:00Z', '2023-01-01T00:00:00Z', 'confirmation_token_1', '2023-01-01T00:00:00Z', 'recovery_token_1', '2023-01-01T00:00:00Z',
    'email_change_token_new_1', 'john.new@example.com', '2023-01-01T00:00:00Z', '2023-01-01T00:00:00Z', '{"app_meta": "data"}', '{"user_meta": "data"}',
    false, '2023-01-01T00:00:00Z', '2023-01-01T00:00:00Z', '1234567890', '2023-01-01T00:00:00Z', '1234567890', 'phone_change_token_1',
    '2023-01-01T00:00:00Z', 'email_change_token_current_1', 1, '2023-01-01T00:00:00Z', 'reauthentication_token_1',
    '2023-01-01T00:00:00Z', false, null, false
  ),
  (
    '00000000-0000-0000-0000-000000000002', '00000000-0000-0000-0000-000000000002', 'public', 'user', 'jane.smith@example.com', 'encrypted_password_2',
    '2023-01-02T00:00:00Z', '2023-01-02T00:00:00Z', 'confirmation_token_2', '2023-01-02T00:00:00Z', 'recovery_token_2', '2023-01-02T00:00:00Z',
    'email_change_token_new_2', 'jane.new@example.com', '2023-01-02T00:00:00Z', '2023-01-02T00:00:00Z', '{"app_meta": "data"}', '{"user_meta": "data"}',
    false, '2023-01-02T00:00:00Z', '2023-01-02T00:00:00Z', '0987654321', '2023-01-02T00:00:00Z', '0987654321', 'phone_change_token_2',
    '2023-01-02T00:00:00Z', 'email_change_token_current_2', 1, '2023-01-02T00:00:00Z', 'reauthentication_token_2',
    '2023-01-02T00:00:00Z', false, null, false
  ),
  (
    '00000000-0000-0000-0000-000000000003', '00000000-0000-0000-0000-000000000003', 'public', 'user', 'alice.johnson@example.com', 'encrypted_password_3',
    '2023-01-03T00:00:00Z', '2023-01-03T00:00:00Z', 'confirmation_token_3', '2023-01-03T00:00:00Z', 'recovery_token_3', '2023-01-03T00:00:00Z',
    'email_change_token_new_3', 'alice.new@example.com', '2023-01-03T00:00:00Z', '2023-01-03T00:00:00Z', '{"app_meta": "data"}', '{"user_meta": "data"}',
    false, '2023-01-03T00:00:00Z', '2023-01-03T00:00:00Z', '1122334455', '2023-01-03T00:00:00Z', '1122334455', 'phone_change_token_3',
    '2023-01-03T00:00:00Z', 'email_change_token_current_3', 1, '2023-01-03T00:00:00Z', 'reauthentication_token_3',
    '2023-01-03T00:00:00Z', false, null, false
  ),
  (
    '00000000-0000-0000-0000-000000000004', '00000000-0000-0000-0000-000000000004', 'public', 'user', 'bob.brown@example.com', 'encrypted_password_4',
    '2023-01-04T00:00:00Z', '2023-01-04T00:00:00Z', 'confirmation_token_4', '2023-01-04T00:00:00Z', 'recovery_token_4', '2023-01-04T00:00:00Z',
    'email_change_token_new_4', 'bob.new@example.com', '2023-01-04T00:00:00Z', '2023-01-04T00:00:00Z', '{"app_meta": "data"}', '{"user_meta": "data"}',
    false, '2023-01-04T00:00:00Z', '2023-01-04T00:00:00Z', '2233445566', '2023-01-04T00:00:00Z', '2233445566', 'phone_change_token_4',
    '2023-01-04T00:00:00Z', 'email_change_token_current_4', 1, '2023-01-04T00:00:00Z', 'reauthentication_token_4',
    '2023-01-04T00:00:00Z', false, null, false
  ),
  (
    '00000000-0000-0000-0000-000000000005', '00000000-0000-0000-0000-000000000005', 'public', 'user', 'charlie.davis@example.com', 'encrypted_password_5',
    '2023-01-05T00:00:00Z', '2023-01-05T00:00:00Z', 'confirmation_token_5', '2023-01-05T00:00:00Z', 'recovery_token_5', '2023-01-05T00:00:00Z',
    'email_change_token_new_5', 'charlie.new@example.com', '2023-01-05T00:00:00Z', '2023-01-05T00:00:00Z', '{"app_meta": "data"}', '{"user_meta": "data"}',
    false, '2023-01-05T00:00:00Z', '2023-01-05T00:00:00Z', '3344556677', '2023-01-05T00:00:00Z', '3344556677', 'phone_change_token_5',
    '2023-01-05T00:00:00Z', 'email_change_token_current_5', 1, '2023-01-05T00:00:00Z', 'reauthentication_token_5',
    '2023-01-05T00:00:00Z', false, null, false
  ),
  (
    '00000000-0000-0000-0000-000000000006', '00000000-0000-0000-0000-000000000006', 'public', 'user', 'david.evans@example.com', 'encrypted_password_6',
    '2023-01-06T00:00:00Z', '2023-01-06T00:00:00Z', 'confirmation_token_6', '2023-01-06T00:00:00Z', 'recovery_token_6', '2023-01-06T00:00:00Z',
    'email_change_token_new_6', 'david.new@example.com', '2023-01-06T00:00:00Z', '2023-01-06T00:00:00Z', '{"app_meta": "data"}', '{"user_meta": "data"}',
    false, '2023-01-06T00:00:00Z', '2023-01-06T00:00:00Z', '4455667788', '2023-01-06T00:00:00Z', '4455667788', 'phone_change_token_6',
    '2023-01-06T00:00:00Z', 'email_change_token_current_6', 1, '2023-01-06T00:00:00Z', 'reauthentication_token_6',
    '2023-01-06T00:00:00Z', false, null, false
  ),
  (
    '00000000-0000-0000-0000-000000000007', '00000000-0000-0000-0000-000000000007', 'public', 'user', 'eve.foster@example.com', 'encrypted_password_7',
    '2023-01-07T00:00:00Z', '2023-01-07T00:00:00Z', 'confirmation_token_7', '2023-01-07T00:00:00Z', 'recovery_token_7', '2023-01-07T00:00:00Z',
    'email_change_token_new_7', 'eve.new@example.com', '2023-01-07T00:00:00Z', '2023-01-07T00:00:00Z', '{"app_meta": "data"}', '{"user_meta": "data"}',
    false, '2023-01-07T00:00:00Z', '2023-01-07T00:00:00Z', '5566778899', '2023-01-07T00:00:00Z', '5566778899', 'phone_change_token_7',
    '2023-01-07T00:00:00Z', 'email_change_token_current_7', 1, '2023-01-07T00:00:00Z', 'reauthentication_token_7',
    '2023-01-07T00:00:00Z', false, null, false
  ),
  (
    '00000000-0000-0000-0000-000000000008', '00000000-0000-0000-0000-000000000008', 'public', 'user', 'frank.green@example.com', 'encrypted_password_8',
    '2023-01-08T00:00:00Z', '2023-01-08T00:00:00Z', 'confirmation_token_8', '2023-01-08T00:00:00Z', 'recovery_token_8', '2023-01-08T00:00:00Z',
    'email_change_token_new_8', 'frank.new@example.com', '2023-01-08T00:00:00Z', '2023-01-08T00:00:00Z', '{"app_meta": "data"}', '{"user_meta": "data"}',
    false, '2023-01-08T00:00:00Z', '2023-01-08T00:00:00Z', '6677889900', '2023-01-08T00:00:00Z', '6677889900', 'phone_change_token_8',
    '2023-01-08T00:00:00Z', 'email_change_token_current_8', 1, '2023-01-08T00:00:00Z', 'reauthentication_token_8',
    '2023-01-08T00:00:00Z', false, null, false
  ),
  (
    '00000000-0000-0000-0000-000000000009', '00000000-0000-0000-0000-000000000009', 'public', 'user', 'grace.harris@example.com', 'encrypted_password_9',
    '2023-01-09T00:00:00Z', '2023-01-09T00:00:00Z', 'confirmation_token_9', '2023-01-09T00:00:00Z', 'recovery_token_9', '2023-01-09T00:00:00Z',
    'email_change_token_new_9', 'grace.new@example.com', '2023-01-09T00:00:00Z', '2023-01-09T00:00:00Z', '{"app_meta": "data"}', '{"user_meta": "data"}',
    false, '2023-01-09T00:00:00Z', '2023-01-09T00:00:00Z', '7788990011', '2023-01-09T00:00:00Z', '7788990011', 'phone_change_token_9',
    '2023-01-09T00:00:00Z', 'email_change_token_current_9', 1, '2023-01-09T00:00:00Z', 'reauthentication_token_9',
    '2023-01-09T00:00:00Z', false, null, false
  ),
  (
    '00000000-0000-0000-0000-000000000010', '00000000-0000-0000-0000-000000000010', 'public', 'user', 'hank.ivy@example.com', 'encrypted_password_10',
    '2023-01-10T00:00:00Z', '2023-01-10T00:00:00Z', 'confirmation_token_10', '2023-01-10T00:00:00Z', 'recovery_token_10', '2023-01-10T00:00:00Z',
    'email_change_token_new_10', 'hank.new@example.com', '2023-01-10T00:00:00Z', '2023-01-10T00:00:00Z', '{"app_meta": "data"}', '{"user_meta": "data"}',
    false, '2023-01-10T00:00:00Z', '2023-01-10T00:00:00Z', '8899001122', '2023-01-10T00:00:00Z', '8899001122', 'phone_change_token_10',
    '2023-01-10T00:00:00Z', 'email_change_token_current_10', 1, '2023-01-10T00:00:00Z', 'reauthentication_token_10',
    '2023-01-10T00:00:00Z', false, null, false
  );

insert into roots(id, first_name, last_name)
values
  ('00000000-0000-0000-0000-000000000001', 'John', 'Doe'),
  ('00000000-0000-0000-0000-000000000002', 'Jane', 'Smith'),
  ('00000000-0000-0000-0000-000000000003', 'Alice', 'Johnson'),
  ('00000000-0000-0000-0000-000000000004', 'Bob', 'Brown'),
  ('00000000-0000-0000-0000-000000000005', 'Charlie', 'Davis'),
  ('00000000-0000-0000-0000-000000000006', 'David', 'Evans'),
  ('00000000-0000-0000-0000-000000000007', 'Eve', 'Foster'),
  ('00000000-0000-0000-0000-000000000008', 'Frank', 'Green'),
  ('00000000-0000-0000-0000-000000000009', 'Grace', 'Harris'),
  ('00000000-0000-0000-0000-000000000010', 'Hank', 'Ivy');

-- user_profilesテーブルにダミーデータを挿入
insert into user_profiles(id, root_id, profile_data)
values
  ('00000000-0000-0000-0000-000000000001', '00000000-0000-0000-0000-000000000001', 'Profile data for John Doe'),
  ('00000000-0000-0000-0000-000000000002', '00000000-0000-0000-0000-000000000002', 'Profile data for Jane Smith'),
  ('00000000-0000-0000-0000-000000000003', '00000000-0000-0000-0000-000000000003', 'Profile data for Alice Johnson'),
  ('00000000-0000-0000-0000-000000000004', '00000000-0000-0000-0000-000000000004', 'Profile data for Bob Brown'),
  ('00000000-0000-0000-0000-000000000005', '00000000-0000-0000-0000-000000000005', 'Profile data for Charlie Davis'),
  ('00000000-0000-0000-0000-000000000006', '00000000-0000-0000-0000-000000000006', 'Profile data for David Evans'),
  ('00000000-0000-0000-0000-000000000007', '00000000-0000-0000-0000-000000000007', 'Profile data for Eve Foster'),
  ('00000000-0000-0000-0000-000000000008', '00000000-0000-0000-0000-000000000008', 'Profile data for Frank Green'),
  ('00000000-0000-0000-0000-000000000009', '00000000-0000-0000-0000-000000000009', 'Profile data for Grace Harris'),
  ('00000000-0000-0000-0000-000000000010', '00000000-0000-0000-0000-000000000010', 'Profile data for Hank Ivy');
