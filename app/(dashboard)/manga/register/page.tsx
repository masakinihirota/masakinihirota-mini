'use client'

import { useState } from 'react'

export default function MangaRegisterPage() {
  const [title, setTitle] = useState('')
  const [author, setAuthor] = useState('')
  const [description, setDescription] = useState('')
  const [message, setMessage] = useState('')

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault()
    setMessage('')
    try {
      const res = await fetch('/api/manga/register', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json'
        },
        body: JSON.stringify({ title, author, description })
      })
      const data = await res.json()
      if (res.ok) {
        setMessage('Manga registered successfully!')
        setTitle('')
        setAuthor('')
        setDescription('')
      } else {
        setMessage(data.error || 'An error occurred.')
      }
    } catch (error) {
      setMessage('An error occurred.')
    }
  }

  return (
    <div className='container mx-auto p-4'>
      <h1 className='text-xl font-bold mb-4'>Register a Manga Work</h1>
      {message && <p className='mb-4'>{message}</p>}
      <form onSubmit={handleSubmit} className='space-y-4'>
        <div>
          <label htmlFor='title' className='block text-sm font-medium'>
            Title
          </label>
          <input
            id='title'
            type='text'
            className='mt-1 p-2 border rounded w-full'
            value={title}
            onChange={(e) => setTitle(e.target.value)}
            required
          />
        </div>
        <div>
          <label htmlFor='author' className='block text-sm font-medium'>
            Author
          </label>
          <input
            id='author'
            type='text'
            className='mt-1 p-2 border rounded w-full'
            value={author}
            onChange={(e) => setAuthor(e.target.value)}
            required
          />
        </div>
        <div>
          <label htmlFor='description' className='block text-sm font-medium'>
            Description
          </label>
          <textarea
            id='description'
            className='mt-1 p-2 border rounded w-full'
            value={description}
            onChange={(e) => setDescription(e.target.value)}
          />
        </div>
        <button
          type='submit'
          className='bg-blue-500 text-white px-4 py-2 rounded'
        >
          Register Manga
        </button>
      </form>
    </div>
  )
}
