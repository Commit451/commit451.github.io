import type { ReactNode } from 'react'
import Footer from './Footer.tsx'

interface LegalLayoutProps {
  title: string
  heading: string
  children: ReactNode
}

export default function LegalLayout({ title, heading, children }: LegalLayoutProps) {
  document.title = title

  return (
    <div className="min-h-screen flex flex-col">
      <header className="border-b border-gray-800 bg-gray-900/50 backdrop-blur-sm">
        <div className="mx-auto max-w-3xl px-6 py-4">
          <a href="/" className="inline-flex items-center gap-2 text-sm text-gray-400 transition hover:text-brand-teal">
            <svg xmlns="http://www.w3.org/2000/svg" className="h-4 w-4" fill="none" viewBox="0 0 24 24" stroke="currentColor" strokeWidth={2}>
              <path strokeLinecap="round" strokeLinejoin="round" d="M15 19l-7-7 7-7" />
            </svg>
            Back to Home
          </a>
        </div>
      </header>

      <main className="flex-1">
        <div className="mx-auto max-w-3xl px-6 py-12">
          <h1 className="mb-8 text-3xl font-bold tracking-tight text-white sm:text-4xl">{heading}</h1>
          <div className="prose prose-invert prose-gray max-w-none [&_h2]:mt-8 [&_h2]:mb-4 [&_h2]:text-xl [&_h2]:font-semibold [&_h2]:text-white [&_p]:text-gray-300 [&_p]:leading-relaxed">
            {children}
          </div>
        </div>
      </main>

      <Footer />
    </div>
  )
}
