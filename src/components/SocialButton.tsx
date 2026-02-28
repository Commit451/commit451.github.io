import type { ReactNode } from 'react'

interface SocialButtonProps {
  href: string
  label: string
  children: ReactNode
}

export default function SocialButton({ href, label, children }: SocialButtonProps) {
  return (
    <a
      href={href}
      target="_blank"
      rel="noopener noreferrer"
      aria-label={label}
      className="group flex h-14 w-14 items-center justify-center rounded-full border border-gray-700 bg-gray-800/50 text-gray-300 transition-all duration-200 hover:border-brand-teal hover:bg-brand-teal/10 hover:text-brand-teal hover:scale-110"
    >
      {children}
    </a>
  )
}
