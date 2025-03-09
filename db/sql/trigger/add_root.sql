-- 新規ユーザー登録時に、auth.usersに行が挿入されたとき、public.rootsに行を挿入するトリガー用の関数
create or replace function public.add_root()
returns trigger
language plpgsql
security definer set search_path = public
as $$
begin
    -- GitHub認証時に得た情報を利用してrootsテーブルにデータを挿入します
    begin
        insert into public.roots (
            id,                   -- ユーザー識別用ID
            aud,                  -- 認証情報
            email,                -- ユーザーのメールアドレス
            email_confirmed_at,   -- メール確認日時
            last_sign_in_at,      -- 最後のサインイン日時
            raw_app_meta_data,    -- アプリからのメタ情報
            raw_user_meta_data,   -- ユーザーに関する全メタ情報（JSON）
            name,                 -- ユーザー名（表示名）
            full_name,            -- フルネーム
            user_name,            -- ユーザー名（システム用）
            created_at,           -- アカウント作成日時
            updated_at,           -- 更新日時
            deleted_at           -- 削除日時
        )
        values (
            new.id,                                   -- auth.usersの新しいID
            new.aud,                                  -- auth.usersの認証情報
            new.email,                                -- auth.usersのメールアドレス
            new.email_confirmed_at,                   -- auth.usersのメール確認日時
            new.last_sign_in_at,                      -- auth.usersの最後のサインイン日時
            new.raw_app_meta_data,                    -- アプリメタ情報
            new.raw_user_meta_data,                    -- ユーザーメタ情報全体
            new.raw_user_meta_data ->> 'name',          -- ユーザー名（表示用）
            new.raw_user_meta_data ->> 'full_name',     -- ユーザーのフルネーム
            new.raw_user_meta_data ->> 'user_name',     -- システム用ユーザー名
            new.created_at,                           -- 作成日時
            new.updated_at,                           -- 更新日時
            new.deleted_at                           -- 削除日時
        );
    exception when others then
        -- エラー発生時、詳細なエラーメッセージを出力
        raise exception 'Error inserting into roots table: %', sqlerrm;
    end;
    return new;
end;
$$;

-- auth.usersに新しいユーザーが作成されると、public.add_root関数を実行するトリガーを設定します
create or replace trigger add_root
    after insert on auth.users
    for each row execute procedure public.add_root();
