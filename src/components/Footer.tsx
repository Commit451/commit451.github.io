export default function Footer() {
  const year = new Date().getFullYear()

  return (
    <footer className="border-t border-gray-800 bg-gray-950/80 backdrop-blur-sm">
      <div className="mx-auto max-w-5xl px-6 py-8">
        <div className="flex flex-col items-center gap-4 sm:flex-row sm:justify-between">
          <p className="text-sm text-gray-400">
            &copy; {year} Commit 451 LLC. All rights reserved.
          </p>
          <nav className="flex gap-6 text-sm">
            <a href="/privacy" className="text-gray-400 transition hover:text-brand-teal">
              Privacy
            </a>
            <a href="/terms" className="text-gray-400 transition hover:text-brand-teal">
              Terms &amp; Conditions
            </a>
            <a href="/account-deletion" className="text-gray-400 transition hover:text-brand-teal">
              Account Deletion
            </a>
          </nav>
        </div>
      </div>
    </footer>
  )
}
