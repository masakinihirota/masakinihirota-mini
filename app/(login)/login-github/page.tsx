import { SocialLoginButtons } from '@/components/auth/social-login-buttons';

export default function Home() {
  return (
    <div className="min-h-screen flex items-center justify-center bg-background">
      <h1 className="text-2xl font-bold text-center text-foreground">
        ソーシャルログイン
      </h1>
      <SocialLoginButtons />
    </div>
  );
}
