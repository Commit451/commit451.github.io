export default function NotFound() {
  document.title = '404 — Commit 451'

  return (
    <div className="flex min-h-screen flex-col items-center justify-center px-6 text-center">
      <h1 className="font-fira text-6xl font-bold text-brand-teal">404</h1>
      <p className="mt-4 text-lg text-gray-400">This page doesn't exist.</p>
      <a
        href="/"
        className="mt-8 inline-flex items-center gap-2 rounded-lg border border-gray-700 bg-gray-800/50 px-6 py-3 text-sm font-medium text-gray-200 transition hover:border-brand-teal hover:text-brand-teal"
      >
        Go Home
      </a>
    </div>
  )
}
