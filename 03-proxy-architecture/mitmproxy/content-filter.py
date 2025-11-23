#!/usr/bin/env python3
"""
mitmproxy Content Filtering Script
Author: Inkwang Lee
Purpose: Block non-business websites for organizational security
"""

from mitmproxy import http
import re

# Blocked URL patterns
BLOCKED_PATTERNS = [
    r"reddit\.com/r/memes",
    r"facebook\.com",
    r"twitter\.com",
    r"youtube\.com/watch",
    r"netflix\.com",
    r"instagram\.com",
    r"tiktok\.com",
]

# Compile regex patterns for performance
BLOCKED_REGEX = [re.compile(pattern, re.IGNORECASE) for pattern in BLOCKED_PATTERNS]

def request(flow: http.HTTPFlow) -> None:
    """
    Intercept HTTP requests and block based on URL patterns
    """
    url = flow.request.pretty_url
    
    # Check against blocked patterns
    for pattern in BLOCKED_REGEX:
        if pattern.search(url):
            # Generate block page
            flow.response = http.Response.make(
                403,  # HTTP 403 Forbidden
                generate_block_page(url),
                {"Content-Type": "text/html; charset=utf-8"}
            )
            print(f"🚫 BLOCKED: {url}")
            return

def generate_block_page(url: str) -> bytes:
    """
    Generate HTML block page
    """
    html = f"""
    <!DOCTYPE html>
    <html>
    <head>
        <title>Access Denied</title>
        <style>
            body {{
                font-family: Arial, sans-serif;
                background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
                color: white;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                margin: 0;
            }}
            .container {{
                background: rgba(255, 255, 255, 0.1);
                padding: 40px;
                border-radius: 10px;
                box-shadow: 0 8px 32px rgba(0, 0, 0, 0.3);
                text-align: center;
                max-width: 600px;
            }}
            h1 {{ font-size: 48px; margin: 0; }}
            .url {{ 
                background: rgba(0, 0, 0, 0.3);
                padding: 10px;
                border-radius: 5px;
                word-break: break-all;
                margin: 20px 0;
            }}
        </style>
    </head>
    <body>
        <div class="container">
            <h1>🚫 Access Denied</h1>
            <p><strong>This website is blocked by company policy.</strong></p>
            <div class="url">{url}</div>
            <p>Category: Non-business / Social Media</p>
            <hr style="margin: 30px 0; opacity: 0.3;">
            <p>If you believe this is an error, contact IT Security:</p>
            <p><strong>security@company.com</strong></p>
        </div>
    </body>
    </html>
    """
    return html.encode('utf-8')

def response(flow: http.HTTPFlow) -> None:
    """
    Optional: Log all responses for audit purposes
    """
    # Could integrate with SIEM here
    pass

# Entry point for mitmproxy
addons = [
    # Could add additional addons here
]
