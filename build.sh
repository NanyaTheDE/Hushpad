#!/bin/sh
# Wraps hushpad.html in a full HTML document for static hosting (Vercel).
# hushpad.html stays a body fragment so it can also be published as a Claude artifact,
# which adds its own <head>. Without this wrapper, phones render the page at desktop width.
set -e
mkdir -p public
{
  cat <<'HEAD'
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">
<meta name="description" content="Hushpad: fidget toys and soft sounds to help you unwind.">
<meta name="theme-color" content="#F7F5F2" media="(prefers-color-scheme: light)">
<meta name="theme-color" content="#0B0B0C" media="(prefers-color-scheme: dark)">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="default">
<meta name="apple-mobile-web-app-title" content="Hushpad">
</head>
<body>
HEAD
  cat hushpad.html
  printf '\n</body>\n</html>\n'
} > public/index.html
echo "Built public/index.html"
