import Footer from '../components/Footer.tsx'
import SocialButton from '../components/SocialButton.tsx'

export default function Home() {
  return (
    <>
      {/* Background */}
      <div className="fixed inset-0 -z-10">
        <img src="/images/bg.png" alt="" className="h-full w-full object-cover opacity-20" />
        <div className="absolute inset-0 bg-gradient-to-b from-gray-950/60 via-gray-950/80 to-gray-950" />
      </div>

      <div className="flex min-h-screen flex-col items-center px-6">
        {/* Spacer to push card toward center */}
        <div className="flex-1" />
        {/* Hero Card */}
        <main className="w-full max-w-lg animate-fade-in">
          <div className="rounded-2xl border border-gray-800 bg-gray-900/70 p-8 shadow-2xl shadow-brand-teal/5 backdrop-blur-md sm:p-12">
            {/* Avatar */}
            <div className="flex justify-center">
              <div className="relative">
                <div className="absolute -inset-1 rounded-full bg-gradient-to-br from-brand-teal to-brand-red opacity-60 blur-md" />
                <img
                  src="/images/avatar.png"
                  alt="Commit 451"
                  width={160}
                  height={160}
                  className="relative rounded-full border-2 border-gray-700"
                />
              </div>
            </div>

            {/* Title */}
            <h1 className="mt-8 text-center font-fira text-3xl font-bold tracking-tight text-white sm:text-4xl">
              Commit 451
            </h1>

            {/* Tagline */}
            <p className="mt-4 text-center text-base leading-relaxed text-gray-400 sm:text-lg">
              A pleasure to build.
            </p>

            {/* Social Links */}
            <div className="mt-8 flex justify-center gap-4">
              <SocialButton href="https://x.com/Commit451" label="X (Twitter)">
                <svg className="h-6 w-6" fill="currentColor" viewBox="0 0 24 24">
                  <path d="M18.244 2.25h3.308l-7.227 8.26 8.502 11.24H16.17l-5.214-6.817L4.99 21.75H1.68l7.73-8.835L1.254 2.25H8.08l4.713 6.231zm-1.161 17.52h1.833L7.084 4.126H5.117z" />
                </svg>
              </SocialButton>

              <SocialButton href="https://github.com/Commit451" label="GitHub">
                <svg className="h-6 w-6" fill="currentColor" viewBox="0 0 24 24">
                  <path d="M12 2C6.477 2 2 6.484 2 12.017c0 4.425 2.865 8.18 6.839 9.504.5.092.682-.217.682-.483 0-.237-.008-.868-.013-1.703-2.782.605-3.369-1.343-3.369-1.343-.454-1.158-1.11-1.466-1.11-1.466-.908-.62.069-.608.069-.608 1.003.07 1.531 1.032 1.531 1.032.892 1.53 2.341 1.088 2.91.832.092-.647.35-1.088.636-1.338-2.22-.253-4.555-1.113-4.555-4.951 0-1.093.39-1.988 1.029-2.688-.103-.253-.446-1.272.098-2.65 0 0 .84-.27 2.75 1.026A9.564 9.564 0 0112 6.844c.85.004 1.705.115 2.504.337 1.909-1.296 2.747-1.027 2.747-1.027.546 1.379.202 2.398.1 2.651.64.7 1.028 1.595 1.028 2.688 0 3.848-2.339 4.695-4.566 4.943.359.309.678.92.678 1.855 0 1.338-.012 2.419-.012 2.747 0 .268.18.58.688.482A10.019 10.019 0 0022 12.017C22 6.484 17.522 2 12 2z" />
                </svg>
              </SocialButton>

              <SocialButton href="https://play.google.com/store/apps/dev?id=8992288925330781810" label="Google Play">
                <svg className="h-6 w-6" fill="currentColor" viewBox="0 0 24 24">
                  <path d="M3.609 1.814L13.792 12 3.61 22.186a.996.996 0 01-.61-.92V2.734a1 1 0 01.609-.92zm10.89 10.893l2.302 2.302-10.937 6.333 8.635-8.635zm3.199-3.199l2.302 2.302-2.302 2.302-2.698-2.302 2.698-2.302zM5.864 3.458L16.8 9.79l-2.301 2.302-8.635-8.634z" />
                </svg>
              </SocialButton>
            </div>
          </div>
        </main>

        {/* Footer */}
        <div className="flex-1" />
        <div className="w-full">
          <Footer />
        </div>
      </div>

      <style>{`
        @keyframes fade-in {
          from {
            opacity: 0;
            transform: translateY(12px);
          }
          to {
            opacity: 1;
            transform: translateY(0);
          }
        }
        .animate-fade-in {
          animation: fade-in 0.6s ease-out;
        }
      `}</style>
    </>
  )
}
