This class is a generic abstract parser class for read-stream based parsers. It wraps its input stream with an XMLReadStreamAdapter and can parse tokens using #nextDelimitedBy: and #nextDelimitedByAny: and a temp write stream buffer.