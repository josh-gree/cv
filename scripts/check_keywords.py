#!/usr/bin/env python3
"""Count how often each term appears in a PDF's extracted text.

Usage:
    scripts/check_keywords.py <pdf> <term> [<term> ...]
    scripts/check_keywords.py <pdf> --file terms.txt   # one term per line

Check cv-plain.pdf, not cv.pdf: the styled template's small caps and hyphen
glyphs confuse text extraction and give false negatives.
"""
import re
import sys


def extract(path: str) -> str:
    try:
        import pymupdf  # type: ignore
        return "\n".join(p.get_text() for p in pymupdf.open(path))
    except ImportError:
        from pypdf import PdfReader  # type: ignore
        return "\n".join(p.extract_text() for p in PdfReader(path).pages)


def main(argv: list[str]) -> int:
    if len(argv) < 3:
        print(__doc__)
        return 1
    pdf, rest = argv[1], argv[2:]
    if rest[0] == "--file":
        with open(rest[1]) as fh:
            terms = [t.strip() for t in fh if t.strip() and not t.startswith("#")]
    else:
        terms = rest
    text = extract(pdf)
    missing = []
    for term in terms:
        n = len(re.findall(r"(?<![A-Za-z])" + re.escape(term) + r"(?![A-Za-z])", text, re.I))
        print(f"{n:3d}  {term}")
        if n == 0:
            missing.append(term)
    print(f"\n{len(terms) - len(missing)}/{len(terms)} terms present")
    if missing:
        print("missing: " + ", ".join(missing))
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv))
