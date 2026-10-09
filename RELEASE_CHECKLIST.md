# EchoTrace — Release and Quality Checklist

This is a **release gate**, not a certificate of completion.

- [x] Public repository separates student materials from instructor solutions.
- [x] Case brief, ten questions and six core CSV evidence files are present.
- [x] Public README identifies core challenge versus supplemental training.
- [ ] Independently answer all ten questions using only the six CSVs.
- [ ] Verify unique, exact-format expected answers with the private instructor key.
- [ ] Check timestamp ordering, event IDs and any network log precision caveats.
- [ ] Execute `python3 scripts/validate_student_package.py` on a clean checkout.
- [ ] Generate SHA-256 manifest from the **exact** student archive contents.
- [ ] Run a blind playtest; record time, hints, ambiguity and difficulty.
- [ ] Package only the six CSVs, student brief and questions into a ZIP per current HTB instructions.
- [ ] Validate ZIP extraction and password (if required by reviewer).
- [ ] Share instructor writeup privately with authorized HTB reviewer.
- [ ] Confirm reviewer can open the student archive and private writeup.

**Release decision:** do not represent the submission as fully verified until the unchecked gates are complete.
