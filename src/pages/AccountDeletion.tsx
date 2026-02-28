import LegalLayout from '../components/LegalLayout.tsx'

export default function AccountDeletion() {
  return (
    <LegalLayout title="Account Deletion — Commit 451" heading="Account Deletion">
      <p>
        Please email us at{' '}
        <a href="mailto:commit451@gmail.com" className="text-brand-teal hover:underline">commit451@gmail.com</a>
        {' '}with the email associated with your account if you would like to delete your account and its associated data. We will do so in a timely manner.
      </p>
    </LegalLayout>
  )
}
